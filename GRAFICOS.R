
# ______________Gráficos____________
#  Se va a trabajar con la matriz penguins

#--------------------------------------------
# Importación de matriz 
#-------------------------------------------

# Import data / from excel /browse / seleccionar archivo / aceptar

#--------------------------------------
#    Exploracion
#-----------------------------------

dim(penguins)
colnames(penguins)
str(penguins)
anyNA(penguins)

# Estadistica descriptiva
summary(penguins)

#-----------------------------------------
# Configuración de la matriz
#------------------------------------------

#Visualizacion de columna
penguins$especie

#1.- Convertir las variables categóticas a factores
penguins$especie<-factor(penguins$especie, 
                         levels=c("Adelie", "Gentoo", "Chinstrap"))

penguins$isla
penguins$isla<-factor(penguins$isla, 
                      levels=c("Torgersen", "Biscoe", "Dream"))

penguins$genero
penguins$genero<-factor(penguins$genero, 
                        levels=c("male", "female"))
penguins$año
penguins$año<-factor(penguins$año, 
                     levels=c("2007", "2008", "2009"))

str(penguins)

summary(penguins)

View(penguins)

# ---Este paso no es opcional.---
# 2.- Creamos una nueva matriz de datos donde se seleccionan
# las columnas de la 2 a la 9.
BD1<-penguins[,2:9]

colnames(BD1)
#---------------------------------
#   Librerías
#----------------------------------
install.packages("ggplot2")

library(ggplot2)


# ------------------------------------------------
#         Boxplot
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("blueviolet","lightpink")

# 2.- Creacion del grafico

BX<-ggplot(BD1, aes(x=genero, y=largo_pico_mm))+
  geom_boxplot(fill=color)+
  ggtitle("Boxplot")+
  xlab("Género")+
  ylab("largo de la aleta (mm)")+
  theme_bw()

# 3.- Visualización del boxplot
BX

#--------------------------------------------------
#            Gráfico de barras
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("khaki", "hotpink", "lightblue")

# 2.- Creación del gráfico
GB1<-ggplot(BD1, aes(x=año))+
  geom_bar(colour= "darkmagenta", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Año")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1

# 4.- Barras verticales
color=c("lightcoral", "deepskyblue", "firebrick")
GB2<-ggplot(BD1, aes(x=año))+
  geom_bar(colour= "darkmagenta", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Año")+
  ylab("Frecuencias")+
  coord_flip()+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

#--------------------------------------------------
#           Histograma
#---------------------------------------------------

# 1.- Construccion del grafico

HG<-ggplot(BD1, aes(x=largo_aleta_mm))+
  geom_histogram(binwindth=0.1, col="lavender", fill="lemonchiffon", alpha=0.4)+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()

# 2.- Visualizacion del grafico
HG

#----------------------------------
#   Grafico de dispersion
#-----------------------------------

# 1.- Construccion del grafico

GD<-ggplot(BD1, aes(x=largo_pico_mm, y=grosor_pico_mm))+
  geom_point(aes(color=especie))+
  ggtitle("Gráfico de dispersión")+
  xlab("largo del pico (mm)")+
  ylab("grosor del pico (mm)")+
  theme_light()

#GRAFICO DE DISPERSION 2

GD2<-ggplot(BD1, aes(x=largo_pico_mm, y=grosor_pico_mm))+
  geom_point(aes())+
  ggtitle("Gráfico de dispersión2")+
  xlab("largo del pico (mm)")+
  ylab("grosor del pico (mm)")+
  theme_light()

GD3<-ggplot(BD1, aes(x=largo_pico_mm, y=grosor_pico_mm))+
  geom_point(aes(color=especie))+
  scale_color_manual(values=c("lightcoral", "lawngreen", "forestgreen"))+
  ggtitle("Gráfico de dispersión3")+
  xlab("largo del pico (mm)")+
  ylab("grosor del pico (mm)")+
  theme_light()
# 2.- Visualizacion del objeto
GD2
BD1$especie
GD3
#-------------------------------
#  Organizacion de graficos
#-------------------------------

# 1.- Descargar el paquete gridExtra

install.packages("gridExtra")

# 2.- Abrir la libreria
library(gridExtra)

# 3.- Organizacion 2 graficos en una fila y dos columnas 
grid.arrange(BX,GB1, nrow=1, ncol=2)

# 4.- Organizacion 3 graficos en dos filas y dos columnas 
grid.arrange(BX,GB1,HG, nrow=2, ncol=2)

# 5.- Organizacion 4 graficos en dos filas y dos columnas 
grid.arrange(BX,GB1,HG,GD3, nrow=2, ncol=2)