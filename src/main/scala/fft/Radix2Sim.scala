package fft

// the library for the core and the simulation
import spinal.core._
import spinal.lib._
import spinal.sim._
import spinal.core.sim._

// scala build in for generate random data
import scala.util.Random

// local lib
import basic._
import model._


// sbt "runMain fft.Radix2Sim"
// fft.Radix2 's testbench
object Radix2Sim {
  def main(args: Array[String]) {
    /* configure the bit width of the value */
    val numBits = 10

    //showRtl(new Radix2(numBits))

    SimConfig.withWave.doSim(new Radix2(numBits)){dut =>
      //Fork a process to generate the reset and the clock on the dut
      dut.clockDomain.forkStimulus(period = 10)

      println(s"dut.ndelay = ${dut.ndelay}")

      //val latency = LatencyAnalysis(dut.io.data_in(0).re, dut.io.data_out(0).re)
      //println(latency)

      val numSimRun = 10

      for (idx <- 1 to numSimRun) {
        var a = util.genRandomInt(numBits)
        var b = util.genRandomInt(numBits)
        var c = util.genRandomInt(numBits)
        var d = util.genRandomInt(numBits)

        // build reference model for radix-2
        var ref0_re = util.satInt(a+c, numBits)
        var ref0_im = util.satInt(b+d, numBits)
        var ref1_re = util.satInt(a-c, numBits)
        var ref1_im = util.satInt(b-d, numBits)

        // input wire
        dut.io.data_in(0).re #= a
        dut.io.data_in(0).im #= b
        dut.io.data_in(1).re #= c
        dut.io.data_in(1).im #= d

        // consume some clk time for sequntial logic
        // val clkDelay = Delay(new Radix2(numBits), 3)

        dut.clockDomain.waitSampling(1 + dut.ndelay) // 1 not correct
        //dut.clockDomain.waitSampling()

        var out0_re = dut.io.data_out(0).re.toInt
        var out0_im = dut.io.data_out(0).im.toInt
        var out1_re = dut.io.data_out(1).re.toInt
        var out1_im = dut.io.data_out(1).im.toInt

        // print
        println("# Radix2Sim #")
        println("input:")
        println("input[0]:" + a.toString + " + " + b.toString + "i")
        println("input[1]:" + c.toString + " + " + d.toString + "i")
        
        println("expect output:")
        println("output[0]:" + ref0_re.toString + " + " + ref0_im.toString + "i")
        println("output[1]:" + ref1_re.toString + " + " + ref1_im.toString + "i")
        
        // the output of the dut
        println("actual output:")
        println("output[0]:" + out0_re.toString + " + " + out0_im.toString + "i")
        println("output[1]:" + out1_re.toString + " + " + out1_im.toString + "i")

        assert(ref0_re == out0_re)
        assert(ref0_im == out0_im)
        assert(ref1_re == out1_re)
        assert(ref1_im == out1_im)
        println("the " + idx.toString + "th test success!")
      }
    }
  }
}
