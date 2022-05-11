// Radix6Sim.scala, support smoke test and random test:
// sbt "runMain fft.Radix6SimSmoke"
// sbt "runMain fft.Radix6Sim"

package fft

// the library for the core and the simulation
import spinal.core._
import spinal.lib._
import spinal.sim._
import spinal.core.sim._

// scala build in for generate random data
import scala.util.Random

/* breeze library is required */
// https://github.com/scalanlp/breeze/wiki/Linear-Algebra-Cheat-Sheet
import breeze.linalg._
import breeze.numerics._
import breeze.math._

// local lib
import basic._
import model._


/*
 * this is the debug entry for FFT radix-6
 * smoke test with signal monitor
 */
object Radix6SimSmoke {
  def main(args: Array[String]) {
    SimConfig.compile {
      // config dut
      val numBits = 16
      val dut = new Radix6(numBits)

      // declare public signal list (todo: make it easy)
      dut.s11d.re.simPublic(); dut.s11d.im.simPublic()
      dut.s21.re.simPublic(); dut.s21.im.simPublic()

      dut.s21d.re.simPublic(); dut.s21d.im.simPublic()

      dut.s32.re.simPublic(); dut.s32.im.simPublic()
      dut.s33.re.simPublic(); dut.s33.im.simPublic()
      dut.s34.re.simPublic(); dut.s34.im.simPublic()

      dut.s41.re.simPublic(); dut.s41.im.simPublic()
      dut.s42.re.simPublic(); dut.s42.im.simPublic()
      dut.s43.re.simPublic(); dut.s43.im.simPublic()
      dut.s44.re.simPublic(); dut.s44.im.simPublic()
      dut.s45.re.simPublic(); dut.s45.im.simPublic()
      dut.s46.re.simPublic(); dut.s46.im.simPublic()
      // end of list

      // return dut after configuration
      dut
    }.doSim{dut =>
      dut.clockDomain.forkStimulus(10)

      var input_dut: DenseVector[Complex] = DenseVector.zeros(6)
      var output_dut: DenseVector[Complex] = DenseVector.zeros(6)

      for (idxVal <- 0 to 5) {
        // gen IQ part
        val re: Int = idxVal * 10//util.genRandomInt(numBits - 5)
        val im: Int = idxVal * 10//util.genRandomInt(numBits - 5)
        // link to dut
        dut.io.data_in(idxVal).re #= re
        dut.io.data_in(idxVal).im #= im
      }

      println(s"the delay of dut is ${dut.ndelay}")

      // print each clock
      for(i <- 0 to dut.ndelay) {
        dut.clockDomain.waitSampling()
        println(s"the ${i}th clk")
        //println(s"s41: ${dut.s41.re.toInt} + ${dut.s41.im.toInt}")
        //println(s"s44: ${dut.s44.re.toInt} + ${dut.s44.im.toInt}")

        // s45 = s32 + s34
        println(s"s21: ${dut.s21.re.toInt} + ${dut.s21.im.toInt}")
        println(s"s11d: ${dut.s11d.re.toInt} + ${dut.s11d.im.toInt}")
        println(s"blks(s11d, s21) = s32: ${dut.s32.re.toInt} + ${dut.s32.im.toInt}")
        println(s"s34: ${dut.s34.re.toInt} + ${dut.s34.im.toInt}")
        println(s"s32 + s34 = s45: ${dut.s45.re.toInt} + ${dut.s45.im.toInt}")
        println("-------------------------------")
        //println(dut.s41.re.toInt)
      }
      // the reference result of the smoke test case
      // 150 + 150i  s41
      assert(dut.s41.re.toInt == 150);assert(dut.s41.im.toInt == 150)
      //-082 + 022i  s42
      assert(dut.s42.re.toInt == -82);assert(dut.s42.im.toInt == 22)
      //-047 - 013i  s43
      assert(dut.s43.re.toInt == -47);assert(dut.s43.im.toInt == -13)
      //-030 - 030i  s44
      assert(dut.s44.re.toInt == -30);assert(dut.s44.im.toInt == -30)
      //-013 - 047i  s45
      assert(dut.s45.re.toInt == -13);assert(dut.s45.im.toInt == -47)
      // 022 - 082i  s46
      assert(dut.s46.re.toInt ==  22);assert(dut.s46.im.toInt == -82)

      println("smoke test passed!")
    }
  }
}


// the random test entry for fft radix-6
object Radix6Sim {
  def main(args: Array[String]) {
    /* configure the bit width of the value */
    val numBits = 16

    //showRtl(new Radix6(numBits))

    SimConfig.withWave.doSim(new Radix6(numBits)){dut =>
      //Fork a process to generate the reset and the clock on the dut
      dut.clockDomain.forkStimulus(period = 10)

      // sim configurations
      val numSimRun = 1000
      val Q = 10
      val N = numBits
      for (idx <- 1 to numSimRun) {
        // storage for dut
        var input_dut: DenseVector[Complex] = DenseVector.zeros(6)
        var output_dut: DenseVector[Complex] = DenseVector.zeros(6)
        var output_dut_flt: DenseVector[Complex] = DenseVector.zeros(6)
        // storage for ref
        var input: DenseVector[Complex] = DenseVector.zeros(6)
        var output: DenseVector[Complex] = DenseVector.zeros(6)

        // generate random simulus
        for (idxVal <- 0 to 5) {
          // gen IQ part
          val re: Int = util.genRandomInt(numBits - 5)
          val im: Int = util.genRandomInt(numBits - 5)
          
          input(idxVal) = Complex(util.fixToFlt(re,N,Q), 
                                  util.fixToFlt(im,N,Q))
          // link to dut
          dut.io.data_in(idxVal).re #= re
          dut.io.data_in(idxVal).im #= im
          // log data
          input_dut(idxVal) = Complex(re, im)
        }

        // reference model
        output = RmFft.Radix6(input)

        // display the input/output of reference
        println("*** input(in float format): ")
        input.foreach(println)
        println("***")
        println("*** ref output(in float format): ")
        output.foreach(println)
        println("***")

        // this is the general form of build in delay number
        dut.clockDomain.waitSampling(1 + dut.ndelay)

        // get output from dut
        for (idxVal <- 0 to 5) {
          output_dut(idxVal) = Complex(dut.io.data_out(idxVal).re.toInt,
                                       dut.io.data_out(idxVal).im.toInt)

          val re_tmp = util.fixToFlt(output_dut(idxVal).real.toInt,N,Q)
          val im_tmp = util.fixToFlt(output_dut(idxVal).imag.toInt,N,Q)

          output_dut_flt(idxVal) = Complex(re_tmp, im_tmp)
        }

        // print dut output
        println("*** dut output(in flout format): ")
        output_dut_flt.foreach(println)
        println("***")

        // using breeze abs
        for (idxVal <- 0 to 5) {
          assert(abs(output_dut_flt(idxVal) - output(idxVal)) < 0.002)
        }
        println("the " + idx.toString + "th random test success!")
      }
    }
  }
}
