onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_tb/reset
add wave -noupdate /mips_tb/clock
add wave -noupdate -radix hexadecimal /mips_tb/Instruction_out
add wave -noupdate -radix hexadecimal /mips_tb/PC
add wave -noupdate -radix hexadecimal /mips_tb/U_0/PC_plus_4
add wave -noupdate /mips_tb/Q_ledRout
add wave -noupdate /mips_tb/Q_ledGout
add wave -noupdate /mips_tb/D_swIn
add wave -noupdate /mips_tb/seg0
add wave -noupdate /mips_tb/seg1
add wave -noupdate /mips_tb/seg2
add wave -noupdate /mips_tb/seg3
add wave -noupdate /mips_tb/U_0/Memwrite_out
add wave -noupdate /mips_tb/U_0/Regwrite_out
add wave -noupdate /mips_tb/U_0/D_swIn
add wave -noupdate /mips_tb/U_0/Q_ledGout
add wave -noupdate /mips_tb/U_0/Q_ledRout
add wave -noupdate /mips_tb/U_0/seg0
add wave -noupdate /mips_tb/U_0/seg1
add wave -noupdate /mips_tb/U_0/seg2
add wave -noupdate /mips_tb/U_0/seg3
add wave -noupdate /mips_tb/U_0/Regwrite
add wave -noupdate /mips_tb/U_0/Zero
add wave -noupdate /mips_tb/U_0/D_sw
add wave -noupdate /mips_tb/U_0/Q_ledG
add wave -noupdate /mips_tb/U_0/Q_ledR
add wave -noupdate /mips_tb/U_0/Q_hex0
add wave -noupdate /mips_tb/U_0/Q_hex1
add wave -noupdate /mips_tb/U_0/Q_hex2
add wave -noupdate /mips_tb/U_0/Q_hex3
add wave -noupdate /mips_tb/U_0/IFE/jumpaddress
add wave -noupdate /mips_tb/U_0/CTL/Opcode
add wave -noupdate /mips_tb/U_0/CTL/RegDst
add wave -noupdate /mips_tb/U_0/CTL/ALUSrc
add wave -noupdate /mips_tb/U_0/CTL/MemtoReg
add wave -noupdate /mips_tb/U_0/CTL/RegWrite
add wave -noupdate /mips_tb/U_0/CTL/MemRead
add wave -noupdate /mips_tb/U_0/CTL/MemWrite
add wave -noupdate /mips_tb/U_0/CTL/BranchEQ
add wave -noupdate /mips_tb/U_0/CTL/BranchNEQ
add wave -noupdate /mips_tb/U_0/CTL/j
add wave -noupdate /mips_tb/U_0/CTL/ALUop
add wave -noupdate /mips_tb/U_0/CTL/clock
add wave -noupdate /mips_tb/U_0/CTL/reset
add wave -noupdate /mips_tb/U_0/CTL/R_format
add wave -noupdate /mips_tb/U_0/CTL/Lw
add wave -noupdate /mips_tb/U_0/CTL/Sw
add wave -noupdate /mips_tb/U_0/CTL/Beq
add wave -noupdate /mips_tb/U_0/CTL/Bne
add wave -noupdate /mips_tb/U_0/CTL/addi
add wave -noupdate /mips_tb/U_0/CTL/imm_op
add wave -noupdate /mips_tb/U_0/CTL/jal
add wave -noupdate /mips_tb/U_0/MEM/ena_ledG
add wave -noupdate /mips_tb/U_0/MEM/ena_ledR
add wave -noupdate /mips_tb/U_0/MEM/ena_hex0
add wave -noupdate /mips_tb/U_0/MEM/ena_hex1
add wave -noupdate /mips_tb/U_0/MEM/ena_hex2
add wave -noupdate /mips_tb/U_0/MEM/ena_hex3
add wave -noupdate /mips_tb/U_0/MEM/ena_sw
add wave -noupdate /mips_tb/U_0/MEM/Q_ledG_sig
add wave -noupdate /mips_tb/U_0/MEM/Q_ledR_sig
add wave -noupdate /mips_tb/U_0/MEM/Q_hex0_sig
add wave -noupdate /mips_tb/U_0/MEM/Q_hex1_sig
add wave -noupdate /mips_tb/U_0/MEM/Q_hex2_sig
add wave -noupdate /mips_tb/U_0/MEM/Q_hex3_sig
add wave -noupdate /mips_tb/U_0/MEM/LEDG/D
add wave -noupdate /mips_tb/U_0/MEM/LEDR/D
add wave -noupdate /mips_tb/U_0/MEM/hex0/D
add wave -noupdate /mips_tb/U_0/MEM/hex1/D
add wave -noupdate /mips_tb/U_0/MEM/hex2/D
add wave -noupdate /mips_tb/U_0/MEM/hex3/D
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {202785 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 528
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1884982 ps}
bookmark add wave bookmark0 {{0 ps} {5040 ns}} 0
