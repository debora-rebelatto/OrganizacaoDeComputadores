# Respostas Prova 1

## 1.

## 2.

## 3.

<img src="./imgs/3-a.jpg">
<img src="./imgs/3-b.jpg">

**a)**
sintática ; semântica
movwm op ; (op) <- w
movwm op ; w <- (op)
movwi op ; w <- op
mul op ; w <- w \* (op)
div op ; w <- w / (op)
add op ; w <- w + (op)
sub op ; w <- w - (op)
pow op ; w <- w ^ (op)
powi op ; w <- w ^ op

**b)**
movwi 2 ; w <- 2
pot c ; w <- 2 ^ 2

## 4.

<img src="./imgs/4.jpg">

add a7, zero, zero
0000000 | 00000 | 00000 | 000 | 1001 | 0110011

beg zero, a3, out_laco
0000000 | 01101 | 00000 | 000 | 10000 | 1100011

addi a7, a7, 4
000000000100 | 10001 | 000 | 10001 | 0010011

j laco
111111111111 | 01101 | 000 | 01101 | 0010011

11111111010111111111 | 00000 | 1101111

add a3, zero, a7
0000000 | 10001 | 00000 | 000 | 01101 | 0110011

ret

## 5.

<img src="">
