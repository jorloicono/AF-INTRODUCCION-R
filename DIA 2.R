## Propiedades de matrices

mimatriz = matrix(1:12, nrow=4,ncol=3)

dim(mimatriz)

mimatriz + 1
mimatriz*2
mimatriz^3

## Matrices con NA

vector1 = c(NA, 2, 3)
vector2 = c(4, 5, NA)

matriz = rbind(vector1,vector2)

matriz/2

## Traspuesta de una matriz

vector1 = c(1, 2, 3)
vector2 = c(4, 5, 6)

matriz = rbind(vector1,vector2)

t(matriz)

## EJERCICIO

# Definir las matrices A y B
matriz_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
matriz_B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow = 3, ncol = 3, byrow = TRUE)

# Calcular la suma de las matrices A y B
matriz_C <- matriz_A + matriz_B

# Calcular el producto de las matrices A y B
matriz_D <- matriz_A %*% matriz_B

# Imprimir las matrices C y D resultantes
print("Matriz C (suma de A y B):")
print(matriz_C)

print("Matriz D (producto de A y B):")
print(matriz_D)

## Dataframes

midf = data.frame("entero"= 1:4, "factor" = c("a","b","c","d"),"numero" = c(1.2,3.4,5.6,7.8), "cadena" = c("casa","arbol","coche","moto"))
midf

dim(midf)

names(midf)

matriz = matrix(1:12,ncol=4)

df = as.data.frame(matriz)

class(df)

df*2

## Listas

vector = 1:10
matriz = matrix(1:4,ncol=2)
df = data.frame("num"=1:3,"let"=c("a","b","c"))

lista = list("vector"=vector,"matriz"=matriz,"df"=df)
lista

listarecursiva = list("lista1"=lista,"lista2"=lista)

listarecursiva

length(lista)

## Coerción

vector = c("a","b","c")
matriz = matrix(1:4,nrow=2)
df = data.frame("a"=1:2,"b"=c("a","b"))

lista = list("a"=vector,"b"=matriz, "c"=df)

as.vector(matriz)
as.vector(df)
as.vector(lista)

as.matrix(vector)
as.matrix(lista)
as.matrix(df)

as.data.frame(vector)
as.data.frame(matriz)
as.data.frame(lista)

as.list(vector)
as.list(matriz)
as.list(df)

## Indices

vector = c(1:10)

vector[3]
vector[1:5]
vector[c(1,5)]


midf = data.frame("entero"= 1:4, "factor" = c("a","b","c","d"),"numero" = c(1.2,3.4,5.6,7.8), "cadena" = c("casa","arbol","coche","moto"))

midf[1]
midf[c(1,3)]
midf[2,]
midf[,2]
midf[2,2]
midf[2:3,3]
midf[4,3:4]

matriz_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)

matriz_A[3,]
matriz_A[,1]
matriz_A[3,2]

## Nombres

midf = data.frame("entero"= 1:4, "factor" = c("a","b","c","d"),"numero" = c(1.2,3.4,5.6,7.8), "cadena" = c("casa","arbol","coche","moto"))

midf["entero"]
midf[1,"entero"]

lista = list("vector"=vector,"matriz"=matriz,"df"=df)
lista["vector"]
lista[c("vector","df")]

## Notacion de $

midf$entero

lista$df
lista$matriz

lista$df["num"]
lista$matriz[2,2]

## Condicionales 

iris$Sepal.Length >7

iris[iris$Sepal.Length>7,]

iris[iris$Sepal.Length>7,5]

iris[iris$Sepal.Width<3 & iris$Species == "setosa",]

iris[iris$Petal.Length < 4.7 | iris$Species=="virginica",]

iris[iris$Species == "oceanica",]

subset(x=iris, subset = Sepal.Length > 7, select = c("Sepal.Length","Species"))

## EJERCICIO 

# Crear el data frame 'datos_estudiantes'
datos_estudiantes <- data.frame(
  Nombre = c('Juan', 'María', 'Pedro', 'Laura'),
  Edad = c(20, 21, 19, 22),
  Asignatura = c('Matemáticas', 'Historia', 'Ciencias', 'Inglés'),
  Calificación = c(85, 76, 92, 88)
)

# Imprimir el data frame completo
print("Datos de los estudiantes:")
print(datos_estudiantes)

# Calcular el promedio de calificaciones
promedio_calificaciones <- mean(datos_estudiantes$Calificación)
print(paste("Promedio de calificaciones:", promedio_calificaciones))

# Filtrar el data frame para mostrar estudiantes mayores de 20 años
estudiantes_mayores <- subset(datos_estudiantes, Edad > 20)

# Imprimir el data frame resultante después de aplicar los filtros
print("Estudiantes mayores de 20 años:")
print(estudiantes_mayores)


## Funciones 

edades = rnorm(n=1500,mean=15,sd=.75)
edades[1:20]

hist(edades)
mean(edades)
sd(edades)
summary(edades)

area = function(lado1,lado2) {
  lado1*lado2
}

area(4,5)

volumen = function(lado1,lado2=2,lado3=3){
  
  print(lado1*lado2*lado3)
  print(lado1)
  
}

volumen(2,lado3=4)

estadistica = function(datos){
  print(mean(datos))
  print(sd(datos))
  print(summary(datos))
}

estadistica(edades)

## EJERCICIO

suma_numeros_pares <- function(lista) {
  pares = lista[lista%%2==0]
  suma = sum(pares)
  return(suma)
}

lista=c(1,2,3,4,5,6,7,8,9,10)

suma_numeros_pares(lista)
