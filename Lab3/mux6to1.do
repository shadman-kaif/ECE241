# set the working dir, where all compiled verilog goes
vlib work

vlog mux6to1.v

vsim mux6to1

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

#cases when all switches are on
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[4]} 1
force {SW[5]} 1

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 0
#run simulation for a few ns
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 0
#run simulation for a few ns
run 10ns

force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 0
#run simulation for a few ns
run 10ns

force {SW[7]} 1
force {SW[8]} 1
force {SW[9]} 0
run 10ns

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 1
#run simulation for a few ns
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 1
#run simulation for a few ns
run 10ns

#cases when all switches are off
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 0
#run simulation for a few ns
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 0
#run simulation for a few ns
run 10ns

force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 0
#run simulation for a few ns
run 10ns

force {SW[7]} 1
force {SW[8]} 1
force {SW[9]} 0
run 10ns

force {SW[7]} 0
force {SW[8]} 0
force {SW[9]} 1
#run simulation for a few ns
run 10ns

force {SW[7]} 1
force {SW[8]} 0
force {SW[9]} 1
#run simulation for a few ns
run 10ns