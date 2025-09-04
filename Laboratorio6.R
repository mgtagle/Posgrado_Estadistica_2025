# Prueba de t muestras dependientes
# Revisar la producción del Kg semilla para el año 2013 y 2014

prod <- read.csv("produccion.csv", header = T)

prod$Tiempo <- as.factor(prod$Tiempo)

boxplot(prod$Kgsem ~ prod$Tiempo)
tapply(prod$Kgsem, prod$Tiempo, mean)


t2012 <- subset(prod$Kgsem, prod$Tiempo =="T2012")
t2013 <- subset(prod$Kgsem, prod$Tiempo =="T2013")

# H0 la media del 2012 es menor que 2013
# H1 las medias de ambos años son diferentes a cero
# Método alternativo two.sided
var.test(prod$Kgsem ~ prod$Tiempo)


t.test(t2013, t2012,
       alternative = "greater",
       var.equal = T, paired = T)
