Amit Nagar Halevy, Tal Kapelnik
CPU - Task 3 Readme-

Project files:
1. MIPS.vhd:	Top entity, includes the architecture for a mips micro processor and its peripherial components.
2. IFETCH.vhd:	fatches from the memmory the next commend to come, pass is to a decoder.
3. IDECODE.vhd:	find out what needs to be done in the next to come cycle.
4. CONTROL.vhd:	turn on all control lines to be able to execute the instruction
5. EXECUTE.vhd:	executes the current commend. controls the ALU.
6. DMEMORY.vhd:	connection to the machines memmory. wether its an IO or the data memmory.