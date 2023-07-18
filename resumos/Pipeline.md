# Pipeline

## Introdução

## Conflitos de Dados
RAW - Read After Write
WAR - Write After Read
WAW - Write After Write

## Conflitos de Controle

Ocorre quanto uma instrução utiliza o rescurso de ser PC + offset, ou seja, uma instrução que contém um devio, porém boa parte das instruções são feitas para ser PC + 4. O que pode gerar um conflito de controle.
Ocorrem porque ainda não se sabe para onde será o devio, e o que será executado após o desvio. Apenas se sabe para onde será o desvio após o cálculo do offset. Depois disso é feito um flush nas instruções que seriam executadas após o desvio e é substituído por pc + offset ao invés de pc + 4.

Ex.:

```assembly
beq $t0, $t1, label
jump label2
```

## Como resolver os Conflitos de Controle
- Instrução `nop` (no operation)
- Adiantamento de instruções (branch delay slot)
- Adiantamento de instruções com desvio condicional (branch delay slot with branch prediction)

