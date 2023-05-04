#! /bin/sh
cp benchmarks/comparator/bitstream.final .
cp benchmarks/comparator/input.final .
cp benchmarks/comparator/output.gold .
vsim -do run_simulation.tcl
diff output.txt output.gold
