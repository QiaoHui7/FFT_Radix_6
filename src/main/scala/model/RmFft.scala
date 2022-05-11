/* RmFft.scala */
package model


/* breeze library is required */
// https://github.com/scalanlp/breeze/wiki/Linear-Algebra-Cheat-Sheet
import breeze.linalg._
import breeze.numerics._
import breeze.math._


// todo:
// Radix2
// Radix3


object RmFft {
  // there is a const value in Math.PI...
  def pi(): Double = 3.141592653589793238462643383279502884197

  // Radix6 building block for FFT design
  def Radix6(inVec: DenseVector[Complex]) : DenseVector[Complex] = {
  	def W(n: Int, m: Int): Complex = exp(-i * 2.0 * pi * n * m / 6.0)
    val expMat = DenseMatrix(
      (W(0,0),W(0,1),W(0,2),W(0,3),W(0,4),W(0,5)),
      (W(1,0),W(1,1),W(1,2),W(1,3),W(1,4),W(1,5)),
      (W(2,0),W(2,1),W(2,2),W(2,3),W(2,4),W(2,5)),
      (W(3,0),W(3,1),W(3,2),W(3,3),W(3,4),W(3,5)),
      (W(4,0),W(4,1),W(4,2),W(4,3),W(4,4),W(4,5)),
      (W(5,0),W(5,1),W(5,2),W(5,3),W(5,4),W(5,5)))

    expMat * inVec
  }

  /* sbt "runMain model.RmFft" */
  def main(args: Array[String]) {
    // generate ramdom complex value
    val inVec: DenseVector[Complex] = DenseVector.zeros(6)
    // assign value (simply cross verified with octave)
    inVec(0) = Complex(1.0, 0.0)
    inVec(1) = Complex(2.0, 0.0)

    // call dut
    val outVec = RmFft.Radix6(inVec)
    // print
    println(outVec)
  }
}


// fft: a general fix-point fft model in scala



