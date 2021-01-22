# WSL2CMD

## Description

This is a tool you can use CMD commands on WSL.

## Feature

This tool produces env you can you CMD easier.

This tool replace "[wsl2cmd] ARGS ..." to "cmd.exe /C ARGS ..."

## Installation

Use "make" command to install this tool.

like this,

`$ make`

Move executable file named "@" to pathed dir.

## Usage

Like this,

`$ @ echo CMD here !`

`$ @ `ipconfig /all`

`$ @ cd "C:\Program Files\"`

If you want to use "pipe" or "redirect", use like this,

`$ @ dir "|" find Program`

`$ @ echo Hello CMD ! ">" hello.txt`

`$ @ sort < nums.txt`

# Contact

|:---:|:---|
|Dev|GrapeJuice|
|Mail|Dev.Grape@outlook.jp|
|Twitter|[@G__HaC](https://twitter.com/G__HaC)|
