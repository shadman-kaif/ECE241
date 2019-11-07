# set the working dir, where all compiled verilog goes
vlib work

vlog or4.v

#load simulation using mux as the top level simulation module
vsim v7432

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# first test case
#set input values using the force command, signal names need to be in {} brackets
force {pin1} 0
force {pin2} 0
#run simulation for a few ns
run 10ns

force {pin1} 0
force {pin2} 1
run 10ns

force {pin1} 1
force {pin2} 0
run 10ns

force {pin1} 1
force {pin2} 1
run 10ns

# Other test cases
force {pin4} 1
force {pin5} 1
run 10ns

force {pin12} 1
force {pin13} 0
run 10ns