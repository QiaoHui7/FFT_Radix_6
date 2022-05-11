/*
 * the basic DSP type design for general RTL algorithm
 * in communication system and beyond.
 * designed by Qiao Hui 2022
 */

// package for basic calculation using comb and seq logic
package basic


// using spinalHDL library
import spinal.core._
import spinal.lib._


// the rFix is just designed as a Scala grammar playground and for test cases
// in practice, use spinalHDL build-in type SInt instead!!
//
// the reference:
// https://spinalhdl.github.io/SpinalDoc-RTD/master/SpinalHDL/Data%20types/Int.html


/* the data should use case class (the feature of case is essential) */
// all data in case class can NOT be reassigned!
// and compared by value

/*
 * the signed real fix point value in Scala
 * this is a spinalHDL wrapper
 */
case class rFix(bitWidth: Int) extends Bundle {
  // the real part for real value (use class SInt as signed integer in spinalHDL)
  val re = SInt(bitWidth bits)

  // the Int value assign, the same as spinalHDL #= assignment for test
  // #= assign
  //def #=(that: Int): rFix = {
  //  val ret = rFix(this.bitWidth)
  //  ret.re #= that
  //  return ret
  //}
  
  // Addition with carry, op +^ : T(max(w(x), w(y))+1, bits)
  def +^(that: rFix): rFix = {
    // additional 1 more bit for output
    val ret = rFix(this.bitWidth.max(that.bitWidth) + 1)
    ret.re := this.re +^ that.re

    ret
  }

  // Addition, op + : T(max(w(x), w(y)), bits)
  def +(that: rFix): rFix = {
    // the same bit-width for both input and output
    val ret = rFix(this.bitWidth.max(that.bitWidth))
    ret.re := this.re + that.re

    ret
  }

  // Subtraction with carry, op -^ : T(max(w(x), w(y))+1, bits)
  def -^(that: rFix): rFix = {
    // additional 1 more bit for output
    val ret = rFix(this.bitWidth.max(that.bitWidth) + 1)
    ret.re := this.re -^ that.re

    ret
  }

  // Subtraction, op - : T(max(w(x), w(y)), bits)
  def -(that: rFix): rFix = {
    // the same bit-width for both input and output
    val ret = rFix(this.bitWidth.max(that.bitWidth))
    ret.re := this.re - that.re

    ret
  }

  // Multiplication, op * : T(w(x) + w(y)), bits)
  def *(that: rFix): rFix = {
    // sum(Bitwidth)
    val ret = rFix(this.bitWidth + that.bitWidth)
    ret.re := this.re * that.re

    ret
  }
}


// this is the real important data type
// Hardware definition of c = a + b
case class cFix(bitWidth: Int) extends Bundle {
  val re = SInt(bitWidth bits)
  val im = SInt(bitWidth bits)

  // resize method
  def resize(numBits: Int): cFix = {
    val ret = cFix(numBits)

    ret.re := this.re.resize(numBits)
    ret.im := this.im.resize(numBits)

    ret
  }

  // always use symmetric saturation, remove MSB numSat bits
  def sat(numSat: Int): cFix = {
    val ret = cFix(this.bitWidth - numSat)

    ret.re := this.re.sat(numSat).symmetry
    ret.im := this.im.sat(numSat).symmetry

    ret
  }

  def satTo(numBits: Int): cFix = {
    val numSat = 
      if ((this.bitWidth - numBits) <= 0)   0
      else                                 (this.bitWidth - numBits)
    val ret = this.sat(numSat)

    return ret
  }

  // alwasy use round to infinity
  def round(numRnd: Int): cFix = {
    val ret = cFix(this.bitWidth - numRnd + 1)

    ret.re := this.re.roundToInf(numRnd, align = false)
    ret.im := this.im.roundToInf(numRnd, align = false)

    ret
  }

  // arithemic right shift and extend bit-width
  def <<(numShiftL: Int): cFix = {
    val ret = cFix(this.bitWidth + numShiftL)

    ret.re := this.re << numShiftL
    ret.im := this.im << numShiftL

    ret
  }

  // Addition with carry, op +^ : T(max(w(x), w(y))+1, bits)
  def +^(that: cFix): cFix = {
    val ret = cFix(this.bitWidth.max(that.bitWidth) + 1)

    ret.re := this.re +^ that.re
    ret.im := this.im +^ that.im

    ret
  }

  // Addition, op + : T(max(w(x), w(y)), bits)
  def +(that: cFix): cFix = {
    val ret = cFix(this.bitWidth.max(that.bitWidth))

    ret.re := this.re + that.re
    ret.im := this.im + that.im

    ret
  }

  // Subtraction with carry, op -^ : T(max(w(x), w(y))+1, bits)
  def -^(that: cFix): cFix = {
    val ret = cFix(this.bitWidth.max(that.bitWidth) + 1)

    ret.re := this.re -^ that.re
    ret.im := this.im -^ that.im

    ret
  }

  // Subtraction, op - : T(max(w(x), w(y)), bits)
  def -(that:   cFix): cFix = {
    val ret = cFix(this.bitWidth.max(that.bitWidth))

    ret.re := this.re - that.re
    ret.im := this.im - that.im

    ret
  }

  // combinational complex multiply
  def *(that: cFix): cFix = {
    // todo: fix bit width mismatch case
    // (a+bi)(c+di) = ac-bd + (bc+ad)i
    // im = (bc+ad) = (a+b)(c+d) - ac - bd
    // step 1: calc a+b/c+d/ac/bd, two add, two mul
    // step 2: calc (a+b)(c+d)/ac-bd/ac+bd, one mul, two add
    // step 3: calc (a+b)(c+d) - (ac + bd), one add
    val ret = cFix(this.bitWidth + that.bitWidth)

    // step 0 input
    val a = SInt(this.bitWidth bits)
    val b = SInt(this.bitWidth bits)
    val c = SInt(that.bitWidth bits)
    val d = SInt(that.bitWidth bits)
    
    a := this.re
    b := this.im
    c := that.re
    d := that.im

    // step 1 (assume w(a) == w(b) and w(c) == w(d) )
    val a_add_b = SInt(a.getWidth + 1          bits)
    val c_add_d = SInt(c.getWidth + 1          bits)
    val a_mul_c = SInt(a.getWidth + c.getWidth bits)
    val b_mul_d = SInt(b.getWidth + d.getWidth bits)

    a_add_b := a+^b
    c_add_d := c+^d
    a_mul_c := a*c
    b_mul_d := b*d

    // step 2
    val m21 = SInt(a_add_b.getWidth + c_add_d.getWidth bits)   //(a+b)(c+d)
    val m22 = SInt(a_mul_c.getWidth.max(b_mul_d.getWidth) + 1 bits)   //ac-bd (as out re)
    val m23 = SInt(a_mul_c.getWidth.max(b_mul_d.getWidth) + 1 bits)   //ac+bd

    m21 := a_add_b *  c_add_d
    m22 := a_mul_c -^ b_mul_d
    m23 := a_mul_c +^ b_mul_d

    // step 3
    val m31 = SInt(m21.getWidth.max(m23.getWidth) + 1 bits)
    val m32 = SInt(a_mul_c.getWidth.max(b_mul_d.getWidth) + 1 bits) // delay of m22

    m31 := m21 -^ m23
    m32 := m22

    // saturate to the same bitwidth as input
    ret.re := m22.sat(m22.getWidth - (this.bitWidth + that.bitWidth)).symmetry
    ret.im := m31.sat(m31.getWidth - (this.bitWidth + that.bitWidth)).symmetry
    // fix-point method for UInt and SInt
    // val B  = A.fixTo(16 downto 1, RoundType.ROUNDTOINF, sym = true )

    ret
  }
}

// fix below
//Generate the MyTopLevel's Verilog/VHDL
//And also, test for the state machine is required

