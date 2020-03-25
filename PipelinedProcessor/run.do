vlog Adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v extractor.v Instruction_Memory.v mux.v mux2.v parser.v Program_Counter.v registerFile.v RISC_V_Processor.v tb.v IDRegister.v EXRegister.v MEMRegister.v WBRegister.v ForwardingUnit.v
vsim -novopt work.tb
view wave
add wave sim:/tb/*
add wave sim:/tb/uut/*
run 85ns