# GMPL-CBC

Solve Mathprog GMPL problems with COIN-OR CBC on Windows.

## GMPL / MathProg

GNU MathProg is a high-level language for creating mathematical programming models. MathProg is specific to GLPK, but resembles a subset of AMPL. MathProg can also be referred to as GMPL (GNU Mathematical Programming Language), the two terms being interchangeable.

Read more at https://en.wikibooks.org/wiki/GLPK/GMPL_(MathProg)

## COIN-OR CBC

Cbc (Coin-or branch and cut) is an open-source mixed integer programming solver written in C++. Cbc can be build with GMPL support, but most of the executables found on the web have not. 

Read more at https://projects.coin-or.org/Cbc

## Install

1. Download and install the GLPK and CBC stand-alone solvers: glpsol.exe and cbc.exe
2. Save gmplcbc.bat on your PC
3. Adjust the settings.
 
##  Run

gmplcbc.bat <yourproblemfile.mod>
