# Question 1
cd assignment1/regression_container
docker build -t linear-regression-app:latest .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest nikrhodes67/linear-regression-app:latest
docker push nikrhodes67/linear-regression-app:latest
