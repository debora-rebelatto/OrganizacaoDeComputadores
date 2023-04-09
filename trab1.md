# Exercício 01: Conjunto de instruções - armazenamento interno

## 1. Considerando a equação a seguir faça o que se pede:

$$
S = \frac{(C-4^b)}{(B-C)*A}
$$

a) Defina a sintaxe e a semântica de um conjunto de instruções que possibilite a implementação da equação. O conjunto de instruções deve usar armazenamento interno baseado Load/Store.
Load op, R ; R (op)
Store op, R ; (op) R
Add rd,rs1,rs2 ; rd rs1 + rs2
Sub rd,rs1,rs2 ; rd rs1 - rs2
Mul rd,rs1,rs2 ; rd rs1 \* rs2
Div rd,rs1,rs2 ; rd rs1 / rs2

b) O programa assembly que utiliza o conjunto de instruções definido no item (a) que implementa a seguinte equação:
MOVMWI B;  
SUB C;  
MOVMWI X;  
MUL A;  
MOVMWI A;  
POW B;  
SUB C;  
DIV X;  
MOVMWI S;

## 2. Considerando a equação a seguir faça o que se pede:

a) Defina a sintaxe e a semântica de um conjunto de instruções que possibilite a implementação da equação. O conjunto de instruções deve usar armazenamento interno baseado em Acumulador.
movmw op; w <- (op)  
movwm op; (op) <- w  
movmwi c; w <- (c)  
add op; w <- w + (op)  
sub op; w <- w - (op)  
mul op ; w <- w \* (op)  
div op ; w <- w / (op)  
pow op ; w <- w (op)

b) O programa assembly que utiliza o conjunto de instruções definido no item (a) que implementa a seguinte equação:

MOVMWI 5;
SUB B;
MOVMWI X;
MOVMWI 2;
ADD A;
MUL X;
MOVMWI 3;
POW A;
SUB C;
DIV X;
MOVMWI S
