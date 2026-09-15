# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker images linear-regression-app
docker tag linear-regression-app:latest mkuhn23/linear-regression-app:latest
docker push mkuhn23/linear-regression-app:latest