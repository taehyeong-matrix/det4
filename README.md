# A New Formula for Determinant of $4 \times 4$ Matrices

This repo contains code related to the paper "A New Formula for Determinant of $4 \times 4$ Matrices".
This papar was written with the following co-authurs.
- Yeongrak Kim, Assistant Professor, Pusan National University.
- Jeong-Hoon Ju, Ph.D student, Pusan National University.


## Toolbox
The code works in MATLAB 2022b. And the following Toolboxes of MATLAB are required to run the code.

- Statistics and Machine Learning Toolbox
- Parallel Computing Toolbox

## Files
Each code is as follows.

- find_3_3.m : Finding formula of determinant of $3\times 3$ matrices based on LASSO
- find_4_4.m : Finding formula of determinant of $4\times 4$ matrices based on LASSO
- det4.m : MATLAB function for computing determinant by using New formula
- example1.m : MATLAB script that implements Figure 1 of the thesis.
- example2.m : MATLAB script that compare precision of det4 and MATLAB built-in function det

## Hardware
Each code was operated on the following hardware. Some codes require large amounts of RAM memory due to large matrices.

Except for the "find_4_4.m" code, it worked in the following hardware environment.
- CPU : 13th Gen Inter(R) Core(TM) i7-13700H, 24MB L3 Cache
- RAM : 32GB LPDDR5

The "find_4_4.m" code ran in the following hardware environment because the "parfor" of Parallel Computing Toolbox and the "lasso" function of Statistics and Machine Learning Toolbox required a large amount of memory.
- CPU : Xeon Gold 6242 16Core 2.8 Ghz,22MB Cache*2P
- RAM : 192GB 3200MHz (12EA * 16GB)
