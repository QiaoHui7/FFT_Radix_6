ThisBuild / version := "1.0"
ThisBuild / scalaVersion := "2.11.12"
ThisBuild / organization := "org.example"

// the spinalHDL lib
val spinalVersion = "1.6.4"
val spinalCore = "com.github.spinalhdl" %% "spinalhdl-core" % spinalVersion
val spinalLib = "com.github.spinalhdl" %% "spinalhdl-lib" % spinalVersion
val spinalIdslPlugin = compilerPlugin("com.github.spinalhdl" %% "spinalhdl-idsl-plugin" % spinalVersion)

// the breeze lib
/* breeze can NOT download in China Mainland */
// Last stable release
//"org.scalanlp" %% "breeze" % "2.0.1-RC1",
// The visualization library is distributed separately as well.
// It depends on LGPL code
//"org.scalanlp" %% "breeze-viz" % "2.0.1-RC1"
/* end of breeze can NOT download in China Mainland */
// Native libraries are not included by default. add this if you want them (as of 0.7)
      // Native libraries greatly improve performance, but increase jar sizes. 
      // It also packages various blas implementations, which have licenses that may or may not
      // be compatible with the Apache License. No GPL code, as best I know.
      //"org.scalanlp" %% "breeze-natives" % "0.12",
val breeze = "org.scalanlp" %% "breeze" % "0.12"
val breezeviz = "org.scalanlp" %% "breeze-viz" % "0.12"

// the name is changed
lazy val someBuild = (project in file("."))
  .settings(
    name := "SpinalHdlSbtAlgo",
    libraryDependencies ++= Seq(
      // spinalHDL
      spinalCore, spinalLib, spinalIdslPlugin,
      // breeze
      breeze, breezeviz
    )
  )

// for breeze in China
resolvers += "Sonatype Releases" at "https://oss.sonatype.org/content/repositories/releases/"

// to enable simulation (according to spinalhdl doc)
fork := true
