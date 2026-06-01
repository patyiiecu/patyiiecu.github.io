#	I could not yet make it work properly.
#	It seems that the distribution of the variable  t
#	is not similar enough to the t-distribution.

mu <- 5
sigma <- 1
N <- 3000

n <- 5
X <- matrix(rnorm(n*N,mean=mu,sd=sigma),nrow=N,ncol=n)
x_bar <- rowMeans(X)
s <- apply(X,1,sd)
mean_x_bar <- mean(x_bar)
z <- (x_bar-mean_x_bar)/(sigma/sqrt(n))
t <- (x_bar-mean_x_bar)/(s/sqrt(n))

par(mfrow=c(2,1))
hist(z,sub="Sample means of 5",nclass=25)
hist(t,sub="Sample means of 5",nclass=25)

n <- 10
X <- matrix(rnorm(n*N,mean=mu,sd=sigma),nrow=N,ncol=n)
x_bar <- rowMeans(X)
s <- apply(X,1,sd)
mean_x_bar <- mean(x_bar)
z <- (x_bar-mean_x_bar)/(sigma/sqrt(n))
t <- (x_bar-mean_x_bar)/(s/sqrt(n))

dev.new()
par(mfrow=c(2,1))
hist(z,sub="Sample means of 10",nclass=25)
hist(t,sub="Sample means of 10",nclass=25)
