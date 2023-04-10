# ROM
```
iverilog -o rom rom.v test_rom.v
vvp rom
```

# A
```
iverilog -o A A_factor.v rom.v lower.v test_A.v
vvp A
```

# B
```
iverilog -o B B_factor.v rom.v higher.v test_B.v
vvp B
```

# D
```
iverilog -o D D_factor.v rom.v lower.v higher.v test_D.v
vvp D
```

# E
```
iverilog -o E E_factor.v rom.v lower.v higher.v test_E.v
vvp E
```

# LOWER
```
iverilog -o lower lower.v test_lower.v
vvp lower
```

# HIGHER
```
iverilog -o higher higher.v test_higher.v
vvp higher
```