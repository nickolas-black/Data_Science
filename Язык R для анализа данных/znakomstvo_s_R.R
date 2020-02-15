# простые построения и вычисления
b1 <- c(1,2,5,3,7,9,2,3,1,2,9,6,3)
table(b1)
median(b1)
sum(b1)
median(sum(b1))
10 >= 10 | 15 > 10

data() #просмотр какие есть данные
# работа с данными iris
iris
head(iris)
head(iris, 5)
tail(iris)
dim(iris) #размер датасета
names(iris) #имена данных
iris$Sepal.Length #вывести содержание переменных датасета
library(cluster) #класстер по цветам
iris
?animals #информация о датасете animals
gro<-animals$gro #посмотреть пропуски
gro
gro[!is.na(gro)] #убираем пропуски
which(is.na(gro)) #выбираем где есть пропуски
