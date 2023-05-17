# Aula 26/04

|    Example     |      Instruction       |             Meaning             |
| :------------: | :--------------------: | :-----------------------------: |
| add x1, x2, x3 |          add           | Regs[x1] <- Regs[x2] + Regs[x3] |
| addi x1, x2, i | add immediate unsigned |    Regs[x1] <- Regs[x2] + 3     |
|   lui x1, 42   |  load upper immediate  |      Regs[x1] <- 42 << 12       |



## Exemplo de programa em assembly

```assembly
.data
    x: .word 0
    y: .word 0
    z: .word 0
.text
  