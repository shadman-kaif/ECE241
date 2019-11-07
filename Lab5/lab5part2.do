# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules to working dir
vlog lab5part2.v

# load simulation using the top level simulation module
vsim lab5part2

# log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}
force reset 0
force f_Select 00
force clock 0 0ns , 1 {5ns} -r 10ns
run 1000000 ns
force reset 1
force f_Select 01
force clock 0 0ns , 1 {5ns} -r 10ns
run 1000000 ns
force reset 1
force f_Select 10
force clock 0 0ns , 1 {5ns} -r 10ns
run 1000000 ns
force reset 1
force f_Select 11
force clock 0 0ns , 1 {5ns} -r 10ns
run 1000000 ns