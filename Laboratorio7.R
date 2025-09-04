# Cpmparación de Una muestra
#  solo ocupamos la especie setosa

setosa <- subset(iris, Species =="setosa")
mean(setosa$Sepal.Width)

# mu = 3.9 

# H0 = la diferencia entres las medias es cero o menor a cero =  igual a 3.9
# H1 = la diferencia entre media teorética y experimental es diferente a cero = diferente a 3.9

t.test(setosa$Sepal.Width, mu = 3.6)
