/* util.scala */
package model

import scala.util.Random

/* specify name space */
object util {
  // max
  def max(x: Int, y: Int) = if (x > y) x else y

  // min
  def min(x: Int, y: Int) = if (x < y) x else y

  // saturate
  def satInt(x: Int, numBits: Int) = {
    val vmax = (Math.pow(2, numBits-1) -1).toInt
    val vmin = -1 * vmax
    
    if(x > vmax)       vmax
    else if(x < vmin)  vmin
    else               x
  }

  // function for generate random SInt value according to given bits
  def genRandomInt(numBits:Int):Int = {
    Random.nextInt(Math.pow(2,numBits).toInt-1) - Math.pow(2,numBits-1).toInt
  }

  // def genRandomIntList()

  // signed operations
  // the floating point and fix point conversion
  def fltToFix(inFlt: Double, inN: Int, inQ: Int): Int = {
    val idealValue: Int = (inFlt * Math.pow(2, inQ)).toInt
    val boundUpper: Int = Math.pow(2, inN-1).toInt - 1
    val boundLower: Int = -Math.pow(2, inN-1).toInt
    if (idealValue > boundUpper)      boundUpper
    else if (idealValue < boundLower) boundLower
    else                              idealValue
  }

  def fixToFlt(inFix: Int, inN: Int, inQ: Int): Double = {
    val idealValue: Double = inFix * Math.pow(2, -inQ)
    idealValue
  }
}
