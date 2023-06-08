## IF / ELSE

if(4>3){
  "Verdadero"
}

if(4<3){
  "Verdadero"
} else {
  "Falso"
}

promedio = function(calificaciones){
  media = mean(calificaciones)
  texto = paste0("Calificación: ", media, ", ")
  if(media >=5){
    print(paste0(texto,"Aprobado"))
  } else {
    print(paste0(texto,"Suspendido"))
  }
  
}

promedio(c(4,5,4))

## Función IFELSE

num = 1:20

num

ifelse(num %%2 == 0, "Par","Impar")

ifelse(num %%2==0 & num%%3==0, "Divisible","No divisible")

genero = c(0,1,0,0,0,1,1,1,0)

generostring = ifelse(genero == 0, "Hombre","Mujer")
generostring

## EJERCICIO

factorial = function(n){
  if(n==0|n==1){
    return(1)
  } else {
    return(n*factorial(n-1))
  }
}

numero = as.integer(readline(prompt= "Ingresa un numero: "))
x=9
factorial(x)

## FOR

dado = 1:6

for(cara in dado){
  print(cara^2)
}

for(numero in 1:10){
  print(numero)
}

cuadrados = NULL

for(numero in 1:20){
  cuadrados[numero] = numero ^2
}

cuadrados

for(palabra in c("casa","coche","arbol")){
  print(palabra)
}

for(i in 1:10){
  print(paste0("Tabla del ", i))
  for(j in 1:10){
    print(i*j)
  }
}

## EJERCICIO 

# Definir la matriz
matriz <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)

# Inicializar la variable para almacenar la suma
suma <- 0

# Bucles for anidados para recorrer la matriz y sumar los elementos
for (i in 1:3) {
  for (j in 1:3) {
    suma <- suma + matriz[i, j]
  }
}
suma

for(i in 1:3){
  for(j in matriz[,i]){
    suma = suma + 1
  }
}

## WHILE

i=0
while( i <10 ){
  print(i)
  i=i+1
}

valor = 0
conteo = 0

while(valor<50){
  valor = valor + sample(x=1:10,size=1)
  conteo = conteo+1
}
valor
conteo

while("dado"=="cara"){
  suma = suma +1
}

suma

## Break y next

for(i in 1:10){
  if(i==3){
    break
  }
  print(i)
}

numero = 20

while(numero>5){
  if(numero==15){
    break
  }
  numero=numero-1
}
numero

for(i in 1:10){
  if(i==3){
    print("es 3")
    next
  }
  print(i)
}

## EJERCICIO

suma = 0
numero = 1

while(suma<1000){
  if(numero %%2==0){
    suma = suma + numero
  }
  numero = numero + 1
  print(suma)
  print(numero)
}

suma
numero

numero = 0
suma = 0

while(suma<1000){
  suma = suma + numero
  numero = numero + 2
}

## Apply

vector = 1:10
vector^2

matriz = matrix(1:9,nrow=3)

matriz
apply(X=matriz,MARGIN=1,FUN=sum)

apply(X=matriz,MARGIN=2,FUN=sum)

apply(X=matriz,MARGIN=1,FUN=mean)

apply(X=matriz,MARGIN=1,FUN=max)
