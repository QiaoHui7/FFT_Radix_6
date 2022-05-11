// Radix6.scala
// support generate Verilgo and VHDL code for FFT radix-6 building block
/* sbt "runMain fft.Radix6Verilog 18" */ // verilog
/* sbt "runMain fft.Radix6Vhdl"       */ // VHDL

package fft

// import spinal library
import spinal.core._
import spinal.lib._

// import local library
import basic._


/*
 * the FFT radix-6 unit without normalization
 * inout: N-bit complex value x6 (re/im)
 * default in: clk/reset_n
 */
class Radix6 (bitWidth: Int) extends Component {
  val io = new Bundle {
    val data_in  = in  Vec(cFix(bitWidth), 6)
    val data_out = out Vec(cFix(bitWidth), 6)
  }

  // specify the number of reg layers
  val ndelay = 6;

  // specify reset value as zero
  val vreset0 = cFix(bitWidth+0);  vreset0.re := 0;  vreset0.im := 0;
  val vreset1 = cFix(bitWidth+1);  vreset1.re := 0;  vreset1.im := 0;
  val vreset2 = cFix(bitWidth+2);  vreset2.re := 0;  vreset2.im := 0;
  val vreset3 = cFix(bitWidth+3);  vreset3.re := 0;  vreset3.im := 0;
  val vreset4 = cFix(bitWidth+4);  vreset4.re := 0;  vreset4.im := 0;

  // stage 1: in(b) => reg(b+1)
  val s11 = Reg( cFix(bitWidth+1) ) init(vreset1)
  val s12 = Reg( cFix(bitWidth+1) ) init(vreset1)
  val s13 = Reg( cFix(bitWidth+1) ) init(vreset1)
  val s14 = Reg( cFix(bitWidth+1) ) init(vreset1)
  val s15 = Reg( cFix(bitWidth+1) ) init(vreset1)
  val s16 = Reg( cFix(bitWidth+1) ) init(vreset1)

  // combinational radix-2 #0
  s11 := io.data_in(0) +^ io.data_in(3)
  s12 := io.data_in(0) -^ io.data_in(3)
  // combinational radix-2 #1
  s13 := io.data_in(1) +^ io.data_in(4)
  s14 := io.data_in(1) -^ io.data_in(4)
  // combinational radix-2 #3
  s15 := io.data_in(2) +^ io.data_in(5)
  s16 := io.data_in(2) -^ io.data_in(5)

  // stage 2: reg(b+1) => reg(b+2)
  val s21 = Reg( cFix(bitWidth+2) ) init(vreset2)
  val s22 = Reg( cFix(bitWidth+2) ) init(vreset2)
  val s23 = Reg( cFix(bitWidth+2) ) init(vreset2)
  val s24 = Reg( cFix(bitWidth+2) ) init(vreset2)
  val s11d = RegNext(s11)
  val s12d = RegNext(s12)

  // combinational radix-2 #4
  s21 := s13 +^ s15
  s22 := s13 -^ s15
  // combinational radix-2 #5
  s23 := s14 +^ s16
  s24 := s14 -^ s16

  // stage 3: blkX. reg(b+2) => reg(b+3)
  val s31 = Reg( cFix(bitWidth+3) ) init(vreset3)
  val s32 = Reg( cFix(bitWidth+3) ) init(vreset3)
  val s33 = Reg( cFix(bitWidth+3) ) init(vreset3)
  val s34 = Reg( cFix(bitWidth+3) ) init(vreset3)

  // cell blka b->b+1
  val blka = new blka(s24.bitWidth)
  blka.io.data_in(0) := s12d.resize(s24.bitWidth)// delay required, bit-width adaption required
  blka.io.data_in(1) := s24
  s31 := blka.io.data_out.resize(s31.bitWidth)
  // cell blks b->b+1
  val blks = new blks(bitWidth+2)
  blks.io.data_in(0) := s11d.resize(s21.bitWidth) // delay required
  blks.io.data_in(1) := s21
  s32 := blks.io.data_out.resize(s32.bitWidth)

  // cell blkm b->b
  val blkm0 = new blkm(s23.bitWidth)
  val blkm1 = new blkm(s22.bitWidth)
  blkm0.io.data_in := s23
  blkm1.io.data_in := s22
  s33 := blkm0.io.data_out
  s34 := blkm1.io.data_out

  // delay
  val vLatency = LatencyAnalysis(s21.re, s32.re)
  val s11dd = Delay(s11d , cycleCount = vLatency)
  val s12dd = Delay(s12d , cycleCount = vLatency)
  val s21d  = Delay(s21  , cycleCount = vLatency)
  val s24d  = Delay(s24  , cycleCount = vLatency)

  // stage 4:
  val s41 = Reg( cFix(bitWidth) )  init(vreset0)
  val s42 = Reg( cFix(bitWidth) )  init(vreset0)
  val s43 = Reg( cFix(bitWidth) )  init(vreset0)
  val s44 = Reg( cFix(bitWidth) )  init(vreset0)
  val s45 = Reg( cFix(bitWidth) )  init(vreset0)
  val s46 = Reg( cFix(bitWidth) )  init(vreset0)

  s41 := (s11dd +^ s21d).satTo(bitWidth)
  s44 := (s12dd -^ s24d).satTo(bitWidth)
  s45 := (s32 +^ s34).satTo(bitWidth)
  s43 := (s32 -^ s34).satTo(bitWidth)
  s46 := (s31 +^ s33).satTo(bitWidth)
  s42 := (s31 -^ s33).satTo(bitWidth)

  io.data_out(0) := s41
  io.data_out(1) := s42
  io.data_out(2) := s43
  io.data_out(3) := s44
  io.data_out(4) := s45
  io.data_out(5) := s46
}


// blka: b->b+1
// right-shift in(1) add with in(0)
// out = in(0) + in(1)>>1
class blka (bitWidth: Int) extends Component {
  val io = new Bundle {
    val data_in  = in  Vec(cFix(bitWidth), 2)
    val data_out = out (cFix(bitWidth+1))
  }

  val tmp = cFix(bitWidth+1)
  tmp := io.data_in(0) << 1

  // stage 1
  val m11 = Reg(cFix(bitWidth+2))
  m11 := tmp +^ io.data_in(1)

  // stage 2
  val m21 = Reg(cFix(bitWidth+1))
  m21 := m11.round(1).sat(1) // right shift 1 bit

  io.data_out := m21
}


// blks: b->b+1
// right-shift in(1) sub from in(0)
// out = in(0) - in(1)>>1
class blks (bitWidth: Int) extends Component {
  val io = new Bundle {
    val data_in  = in  Vec(cFix(bitWidth), 2)
    val data_out = out (cFix(bitWidth+1))
  }

  val tmp = cFix(bitWidth+1)
  tmp := io.data_in(0) << 1

  // stage 1
  val m11 = Reg(cFix(bitWidth+2))
  m11 := tmp -^ io.data_in(1)

  // stage 2
  val m21 = Reg(cFix(bitWidth+1))
  m21 := m11.round(1).sat(1) // right shift 1 bit and saturate

  io.data_out := m21
}


// BLKM b->b+1
// out = in * (sqrt(3)/ 2) * 1i
class blkm (bitWidth: Int) extends Component {
  val io = new Bundle {
    val data_in  = in  (cFix(bitWidth))
    val data_out = out (cFix(bitWidth+1))
  }

  // generate fix pint factor
  val factor = (Math.sqrt(3) / 2 * Math.pow(2,bitWidth-1)).toInt

  // stage 1
  val product = Reg(cFix(bitWidth+bitWidth))
  product.re := -io.data_in.im * factor
  product.im := io.data_in.re * factor

  // stage 2
  val tmpSat = Reg(cFix(bitWidth+1))
  val tmpRnd = cFix(bitWidth+2)
  tmpRnd := product.round(bitWidth-1)
  tmpSat := tmpRnd.sat(1)

  io.data_out := tmpSat
}


//Generate the Radix6's Verilog
object Radix6Verilog {
  def main(args: Array[String]) {
    // specify the number of inout bits
    val bitWidth = 
      if (args.length == 1)  args(0).toInt
      else                   16
    require(bitWidth >= 8 && bitWidth <=32)
    // echo
    println(s"[Parameter] start generation of ${bitWidth} bit fft radix-6")
    // generate Verilog code
    SpinalVerilog(new Radix6(bitWidth))
  }
}


//Generate the Radix-6's VHDL
object Radix6Vhdl {
  def main(args: Array[String]) {
    SpinalVhdl(new Radix2(16))
  }
}
