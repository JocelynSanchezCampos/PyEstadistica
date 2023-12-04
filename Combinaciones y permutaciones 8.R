# Combinaciones y permutaciones

#Instalar paqueteria 

# 1. Instalar paqueteria "gtools"

install.packages("gtools")

# 2. Abrir paqueteria 

library(gtools)

# Combinaciones 

#1. Ejemplo: Tenemos 100 estudiantes y se quieren agrupar en equipos de dos 
#integrantes cada uno.

# N= 100 - Númweo de elementos

# n = 2 - Grupos de 2 en 2 

N <- 100
n <- 2

# 2. Determinar que vayan los números con ID númerico
#consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos".

alumnos <- c(1:N)

## Cómo sacar las combinaciones.

# 1. Nombrar un objeto llamado "combinaciones", utilizando
# ¨N¨, ¨n¨ y ¨alumnos¨ y la función ¨combinaciones¨

combinaciones<-combinations(N,n, alumnos)

# 2. Las primeras combinaciones 
head(combinaciones)

#3. Las últimas combinaciones

tail(combinaciones)

# 4. ¿Cu'antas combinaciones tenermos en total?

nrow(combinaciones)

# 5. Utilizando la formula 
# **factorial (N) / (factorial(n) * (factorial (N-N)))**
# debe salir el mismo número que en el código anterior 

factorial(N) / (factorial(n) * (factorial(N-n)))

# Mi ejemplo 
#Instalar paqueteria 

# 1. Instalar paqueteria "gtools"

install.packages("gtools")

# 2. Abrir paqueteria 

library(gtools)

# 1. Se quieren realizar equipos de 3 integrantes con 
# los alumnos de tercer y cuarto año grado de la escuela 
# primaria "Lazara Cardenas" en Banderilla. En total se 
# tienen 165 alumnos

# N= 165 - Númweo de elementos

# n = 5 - Grupos de 5 en 5

N <- 165
n <- 3

# 2. Determinar que vayan los números con ID númerico
#consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos".

alumnos <- c(1:N)

## Cómo sacar las combinaciones.

# 1. Nombrar un objeto llamado "combinaciones", utilizando
# ¨N¨, ¨n¨ y ¨alumnos¨ y la función ¨combinaciones¨

combinaciones <- combinations(N, n, alumnos)

# 2. Las primeras combinaciones 

head(combinaciones)

#3. Las últimas combinaciones

tail(combinaciones)


# 4. ¿Cuantas combinaciones tenermos en total?

nrow(combinaciones)

# 5. Utilizando la formula 
# **factorial (N) / (factorial(n) * (factorial (N-N)))**
# debe salir el mismo número que en el código anterior 

factorial(N) / (factorial(n) * (factorial(N-n)))

# Permutaciones

#1. Ejemplo: Tenemos 100 estudiantes y se quieren agrupar en equipos de dos 
#integrantes cada uno.

# N= 100 - Número de elementos

# n = 2 - Grupos de 2 en 2 

N <- 100
n <- 2

# 2. Determinar que vayan los números con ID númerico
#consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos".

alumnos <- c(1:N)

## Sacar las permutaciones

# 1. Nombrar un objeto llamado "permutaciones", utilizando 
# **N**, n **n** y **alumnos** y la  funcion **permutations** 

permutaciones <- permutations(N, n, alumnos)

#2. Las primeras permutaciones.

head(permutaciones)

#3. Las últimas permutaciones

tail(permutaciones)

#4. ¿Cuántas permutaciones se tienen en total?

nrow(permutaciones)

# 5. Utilizando la fórmula 
# **factorial(N) / factorial (N-n)**, debe salir el 
## mismo número que en el código anterior 

factorial(N) / factorial (N-n)

# 1. Se quieren realizar equipos de 3 integrantes con 
# los alumnos de tercer y cuarto año grado de la escuela 
# primaria "Lazara Cardenas" en Banderilla. En total se 
# tienen 165 alumnos

# N= 165 - Númweo de elementos

# n = 5 - Grupos de 5 en 5

N <- 165
n <- 3

# 2. Determinar que vayan los números con ID númerico
#consecutivo. En esta ocasión, el objeto se llamará 
# "alumnos".

alumnos <- c(1:N)

## Sacar las permutaciones

# 1. Nombrar un objeto llamado "permutaciones", utilizando 
# **N**, n **n** y **alumnos** y la  funcion **permutations** 

permutaciones2 <- permutations(N, n, alumnos)

#2. Las primeras permutaciones.

head(permutaciones2)

#3. Las últimas permutaciones

tail(permutaciones2)

#4. ¿Cuántas permutaciones se tienen en total?

nrow(permutaciones2)

# 5. Utilizando la fórmula 
# **factorial(N) / factorial (N-n)**, debe salir el 
## mismo número que en el código anterior 

factorial(N) / factorial (N-n)
