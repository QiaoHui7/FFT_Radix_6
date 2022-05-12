# FFT_Radix_6
A FFT Radix-6 design using spinalHDL to generate Verilog/VHDL

## Overview

This is an ASIC design project using SpinalHDL to general Verilog/VHDL code.

This project use SBT as build method for Scala codes.

## Quick take-away

Get the verified Verilog source code directly from folder takeAway.

## Configuration on Ubuntu 18.04 LTS

Install Java:

```shell
sudo apt install openjdk-11-jdk
```

Install Scala:

```shell
sudo apt install scala
```

Install SBT:

```shell
sudo apt install sbt
```

Install Verilator(for waveform verification):

Refer to (install from source code for Ubuntu):

https://www.veripool.org/verilator/

## How to use

First of all, download source code:

```shell
git clone https://github.com/QiaoHui7/FFT_Radix_6.git
```

Go to source code path:

```shell
cd FFT_Radix_6
```

Run a simple example (smoke test case for FFT radix-6):

```shell
sbt "runMain fft.Radix6SimSmoke"
```

and, if you would like to random test, use:

```shell
sbt "runMain fft.Radix6Sim"
```

to generate Verilog code, use:

```shell
sbt "runMain fft.Radix6Verilog 18"
```

where 18 is for the number of bit for signed 2's complement fix point input and output value.



