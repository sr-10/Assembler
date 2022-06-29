# Assembler
![logo](https://img.shields.io/badge/C%2B%2B-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)
## Description
The SIC/XE assembler is a two-pass assembler in which an input file is 
served to the assembler and the assembler generates an object 
code, table file, intermediate file and an error file. The input file is 
written in assembly language. The working of the assembler takes in 
two phases which is pass1 and pass2. In pass1 the assembler 
generates a symbol table, an intermediate file for pass 2. In pass 2 an 
object program along with an error file is generated and a listing file 
for containing the input assembly code and address, block number, 
object code of each instruction. The assembler takes into account all 
the SIC/XE instructions all machine independent assembler features 
like literals, program blocks, expressions and symbol defining 
statements.
## Dependencies
- Text Editor
- C++ Compiler
## Installation
- Clone the repository.
- Open the repository from the terminal.
- Open the Assembler directory.
- Type in terminal the command: g++ pass2.cpp -o pass2
- Type in terminal the command: ./pass2
- The assembler will now ask an input file, in this case we have a test program.
- Type in terminal the command: test.asm
- The assembler successfully creates the object file for corresponding file along with error file, listing file ,intermediate file.
## Features
- Conversion from assembly language to object program.
- Generation of errors, listing file ,intermediate and tables file.
- The assembler takes into account all the SIC/XE instructions all machine independent assembler features like literals, program blocks, expressions and symbol defining statements.
## Working of the project
It is important for all input test files to have START and END labels as 
the assembler is designed in such a way that it starts with START 
label and ends with END label. Pass1 of assembler operates in such a 
way that it recognises first the comment lines and print them directly 
to intermediate file. The while loop iterates in such a way that until it 
encounters opcode as ‘END’ it keeps on iterating in the lines of the 
input file. For various opcodes it searches for the flag format if it is 
format 3 or format 4. It checks for the assembler keywords and 
accordingly operates. All this is written to the intermediate file and if 
any error is encountered it is written to the error file. For pass2 the 
intermediate file is taken as input and it again operates on while loop 
until it gets ‘END’ as opcode. The pass2 takes help from the Symbol 
table in order to assign the address and generate the object code. 
Using combination of if else statements we check for the different 
opcodes that are possible.
## Learnings from the Project
- The internals of an assembler.
- Assembly to object program conversion.
- Different machine instructions and their formats.
