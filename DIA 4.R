## Apply

vector = 1:10
vector^2

matriz = matrix(1:9,nrow=3)

matriz
apply(X=matriz,MARGIN=1,FUN=sum)

apply(X=matriz,MARGIN=2,FUN=sum)

apply(X=matriz,MARGIN=1,FUN=mean)

apply(X=matriz,MARGIN=1,FUN=max)

apply(matriz,2,quantile,probs=c(.33,.66))

## Lapply

lapply(trees,mean)
lapply(trees,quantile,probs=c(0.2,0.4))


mivector = 6:12
resultado = NULL
posicion = 1

for(numero in mivector){
  resultado[posicion] = sqrt(numero)
  posicion = posicion +1
}

resultado

resultado = lapply(mivector,sqrt)

## EJERCICIO

# Definir la matriz numérica de tamaño 4x3
matriz <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)

# Calcular el promedio de cada columna utilizando apply()
promedios <- apply(matriz, 2, mean)

# Mostrar los promedios de cada columna
print(promedios)

## Importar 

download.file(
  url = "https://raw.githubusercontent.com/jboscomendoza/r-principiantes-bookdown/master/datos/breast-cancer-wis.data", 
  dest = "breast-cancer-wis.data"
)

nombres <- c("id", "clump_t", "u_csize", "u_cshape", "m_adh", "spcs", "b_nuc", 
             "b_chr", "n_nuc", "mit", "class")

bcancer <- read.table(file = "breast-cancer-wis.data",header= FALSE,sep=",",col.names = nombres)
bcancer

download.file(
  url = "https://raw.githubusercontent.com/jboscomendoza/r-principiantes-bookdown/master/datos/breast-cancer-wis.csv", 
  dest = "breast-cancer-wis.csv"
)

bcancer = read.csv("breast-cancer-wis.csv")
bcancer

## Exportar

write.table(iris,"iris.txt",sep=",",row.names = FALSE,col.names = TRUE)
write.table(iris,"iris.csv",sep=",",row.names = FALSE,col.names = TRUE)

## Excel

library(readxl)

excel_sheets("iris.xlsx")

iris = read_excel("iris.xlsx",sheet= "iris")

install.packages("xlsx")
library(xlsx)

write.xlsx(iris, "iris3.xlsx")

## Dplyr

install.packages("gapminder")
library(gapminder)
df = gapminder
df
install.packages("dplyr")
library(dplyr)

## filter()

a = df %>% filter(country=="Spain") 
a = df %>% filter(lifeExp < 29)
a = df %>% filter(lifeExp > 29 & lifeExp <= 32)
a = df %>% filter(lifeExp < 80 & continent=="Africa")
a = df %>% filter(lifeExp > 72 & (continent == "Africa" | continent == "Asia"))

aa = df %>% top_n(5,lifeExp)
aa

## arrange()

a = df %>% arrange(lifeExp)
a = df %>% arrange(desc(lifeExp))
a = df %>% arrange(lifeExp,pop)

aa = df %>% top_n(5,lifeExp) %>% arrange(desc(lifeExp))

aa  
  
## rename()

df %>% rename(life_Exp=lifeExp)

names(df) = names(df) %>% toupper

df  

## select()

aa = df %>% filter(lifeExp > 72 & (continent == "Africa" | continent == "Asia")) %>% select(year,lifeExp)
aa = df %>% select(-year) 
aa  

## mutate()

aa = df %>% mutate(GDP =gdpPercap*pop)
aa

## summarise()

aa = df %>% filter(continent == "Africa" | continent == "Asia") %>% summarise(mean(lifeExp))
aa


##group_by()

aa = df %>% group_by(continent) %>% summarise(NN=n(), NN_countries = n_distinct(country))
aa = df %>% group_by(continent) %>% summarise(mean(lifeExp))
aa = df %>% filter(year == "1952") %>% group_by(continent) %>% summarise(mean(lifeExp))
aa


aa = df %>% group_by(country) %>% select(country,year,lifeExp) %>% mutate(incremento = lifeExp - lag(lifeExp)) %>% filter(country=="Spain")
aa

## EJERCICIO

ventas <- data.frame(
  Sucursal = c("Sucursal A", "Sucursal B", "Sucursal A", "Sucursal B", "Sucursal A"),
  Fecha = c("2023-05-01", "2023-05-01", "2023-05-02", "2023-05-02", "2023-05-03"),
  Ventas = c(100, 150, 200, 120, 180)
)

filtradas = ventas %>% filter(Sucursal == "Sucursal A")
agrupadas = ventas %>% group_by(Fecha) %>% summarise(total = sum(Ventas))
agrupadas2 = ventas %>% group_by(Fecha) %>% summarise(media = mean(Ventas))
ordenadas = ventas %>% arrange(desc(Fecha))
ordenadas

## EJERCICIO 

alumnos <- data.frame(
  Nombre = c("María", "Ana", "Laura", "Sofía", "Lucía"),
  Edad = c(18, 17, 19, 18, 17),
  Género = c("Femenino", "Femenino", "Femenino", "Femenino", "Femenino"),
  Promedio = c(8.5, 9.2, 7.8, 8.9, 9.1)
)

df = alumnos %>% filter(Género == "Femenino") %>% summarise(Edadpromedio = mean(Edad), Notapromedio = mean(Promedio)) 
df
df = alumnos %>% filter(Género == "Femenino") %>% arrange(desc(Edad))
df
