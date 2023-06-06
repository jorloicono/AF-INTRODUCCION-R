## Tipos de datos 

numero = 3
class(numero)
string = "cadena"
class(string)
class(TRUE)

## Coerción: logico -> entero -> numeric <-> string

as.character(5)
as.numeric("cinco")
as.factor("cinco")

## Verificar tipo de dato

is.numeric(3)
is.character("cinco")
is.logical(FALSE)

## Operadores aritméticos

5*4
4+"tres"
4+as.numeric("2")
NA*2
5%%2

## Operadores relacionales

5>3
4<5
4==2
"casa">"barco"

## Operadores lógicos

5|0
5&0
FALSE&TRUE
(5>0)|(8<6)
(5>0)&(8<6)
!(8>2)

## Operadores de asignación

estatura = 1.9
peso <- 85
bmi=peso/estatura^2
bmi

## Orden operadores: ^ -> * / -> + - -> relacionales (< <= > >= == !=) -> ! -> & -> | -> =

## Vectores

is.vector(3)
length(3)
is.vector(TRUE)
is.vector("tres")

## Crear vector

vectornumerico= c(1,2,3,4,5)
class(vectornumerico)
vectorvariado = c(FALSE,2,"quinto",4.00)
class(vectorvariado)

## Insertar nuevos datos en vector

vectorcadenas = c("casa","coche","arbol")
vectorcadenas = c(vectorcadenas,3)
vectorcadenas
vectornumerico = c(vectornumerico,"cuarenta")
vectornumerico
class(vectornumerico)

## Secuencias numericas

1:10
10:1
62.5:68.4

## Operaciones sobre vectores

vector= c(2,3,4,3,1,2,3,4)

vector + 2
vector*2
vector%%2
vector>2
vector ==2

##Creacion de matrices

1:12
matrix(1:12)
matrix(1:12,nrow = 3,ncol = 4)
matrix(1:12,nrow = 4,ncol = 3)

matrix(1:12,nrow = 3,ncol = 3)
matrix(1:12,nrow = 5,ncol = 4)

vector1 = 1:4
vector2 = 5:8
vector3= 9:12
vector4 = 13:16

matriz = rbind(vector1,vector2,vector3,vector4)
matriz

matriz = cbind(vector1,vector2,vector3,vector4)
matriz
