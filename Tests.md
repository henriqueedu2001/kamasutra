# ROM
```
iverilog -o rom modules/rom.v tests/test_rom.v
vvp rom
```

# A
```
iverilog -o A modules/A_factor.v modules/rom.v modules/lower.v tests/test_A.v
vvp A
```

# B
```
iverilog -o B modules/B_factor.v modules/rom.v modules/higher.v tests/test_B.v
vvp B
```

# D
```
iverilog -o D modules/D_factor.v modules/rom.v modules/lower.v modules/higher.v tests/test_D.v
vvp D
```

# E
```
iverilog -o E modules/E_factor.v modules/rom.v modules/lower.v modules/higher.v tests/test_E.v
vvp E
```

# LOWER
```
iverilog -o lower modules/lower.v tests/test_lower.v
vvp lower
```

# HIGHER
```
iverilog -o higher modules/higher.v tests/test_higher.v
vvp higher
```