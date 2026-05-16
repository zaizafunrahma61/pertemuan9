summary(mtcars)
ratarata<-mean(mtcars$mpg)
n<-length(mtcars)
status <- numeric(n)
for (i in 1:n){
  if (mtcars$mpg[i]>ratarata){
    status[i]<-'tinggi'
  }
  else
    status<-append(status,'rendah')
}

hist(mtcars$mpg)
boxplot(mtcars$mpg)
pie(mtcars$mpg)
plot(mtcars$mpg)
hasil <- data.frame(
  mobil = rownames(mtcars),
  mpg = mtcars$mpg,
  status = status
)

hasil
