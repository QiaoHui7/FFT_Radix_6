package fft

// import spinal library
import spinal.core._
import spinal.lib._

// import local library
import basic._


// some toplevel usage
// the first case is fft radix-2
// input in[0], in[1]
// output out[0] = in[0] + in[1]
// output out[1] = in[0] - in[1]
class Radix2 (bitWidth: Int) extends Component {
  val io = new Bundle {
    val data_in  = in  Vec(cFix(bitWidth), 2)
    val data_out = out Vec(cFix(bitWidth), 2)
  }
  // specify the number of reg layers
  val ndelay = 1:Int;
  // specify reset value as zero
  val vreset = cFix(bitWidth+1);  vreset.re := 0;  vreset.im := 0;

  // temp wire (extend 1 bit)
  // todo: update to init(0) format (default constructor is required)
  val out0 = Reg( cFix(bitWidth+1) ) init(vreset)
  val out1 = Reg( cFix(bitWidth+1) ) init(vreset)

  // [seqs]add/sub with carry bit
  out0 := io.data_in(0) +^ io.data_in(1)
  out1 := io.data_in(0) -^ io.data_in(1)

  // [comb]saturate carry bit
  io.data_out(0) := out0.sat(1)
  io.data_out(1) := out1.sat(1)
}


/* sbt "runMain fft.Radix2Verilog" */
//Generate the Radix-2's Verilog
object Radix2Verilog {
  def main(args: Array[String]) {
    // specify the number of inout bits
    SpinalVerilog(new Radix2(16))
  }
}


/* sbt "runMain fft.Radix2Vhdl" */
//Generate the Radix-2's VHDL
object Radix2Vhdl {
  def main(args: Array[String]) {
    SpinalVhdl(new Radix2(16))
  }
}
