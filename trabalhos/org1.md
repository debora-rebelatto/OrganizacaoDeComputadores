# Exercício 01: Conjunto de instruções - armazenamento interno

## 1. Considerando a equação a seguir faça o que se pede:


a) Defina a sintaxe e a semântica de um conjunto de instruções que possibilite a implementação da equação. O conjunto de instruções deve usar armazenamento interno baseado em Acumulador (registrador de trabalho).

Movmw op; w <- (op)
Movwm op; (op) <-  w
Add op; w <-  w + (op)
Sub op; w <-  w - (op)
Mul op; w <-  w * (op)
Div op; w <-  w / (op)

b) O programa assembly que utiliza o conjunto de instruções definido no item (a) que implementa a seguinte equação:
$$
S = \frac{(C-4^B)}{(B-C)*A}
$$

Movwm C      ; (C) <- w
Movwm B      ; (B) <- w
Movmw 4      ; w <- 4
Pow B        ; w <- 4^B
Sub w        ; w <- C - (4^B)
Movwm B      ; (B) <- w
Movwm C      ; (C) <- w
Sub w        ; w <- B - C
Movwm B      ; (B) <- w
Sub C        ; w <- (B - C)
Mul A        ; w <- A * (B - C)
Div w        ; w <- (C - 4^B) / ((B - C) * A)
Movmw S      ; (S) <- w

## 2. Considerando a equação a seguir faça o que se pede:

a) Defina a sintaxe e a semântica de um conjunto de instruções que possibilite a implementação da equação. O conjunto de instruções deve usar armazenamento interno baseado em Pilha.
Pop op; (op) <- topo
Push op; topo <- (op)
Add ; topo <- topo + topo-1
Sub ; topo <- topo - topo-1
Mul ; topo <- topo * topo-1
Div ; topo <- topo / topo-1
Pow; topo <- topo^topo-1


b) O programa assembly que utiliza o conjunto de instruções definido no item (a) que implementa a seguinte equação:

$$
S = \frac{(C-4^3)}{(B-5)*(A+2)}
$$


push 5
push B
sub

push 2
push A
add

mul

push 4
push 4     
push 3    
pow        

sub        

div

pop S