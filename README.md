# Run verilog testbench

## Compile the test

```zsh
iverilog -o my_and_gate_tb and_gate.v and_gate_tb.v
```

## Execute the test

```zsh
vvp my_and_gate_tb
```
