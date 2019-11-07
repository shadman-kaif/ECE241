# set the working dir, where all compiled verilog goes
vlib work

vlog inverters6.v

vsim v7404

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# first test case
#set input values using the force command, signal names need to be in {} brackets
force {pin1} 0
#run simulation for a few ns
run 10ns

force {pin1} 1
run 10ns

#Other test cases
force {pin5} 1
run 10ns

force {pin9} 0
run 10ns