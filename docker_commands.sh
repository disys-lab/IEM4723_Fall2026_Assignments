#Question 1
docker build -t linear-regrssion-app . 

docker tag linear-regression-app linear regression-app:v0.1.1
docker tag linear-regression-app linear regression-app:v0.1.2

docker tag linear-reggression-app lkokal/linear-regression-app:latest

docker push lkokal/linear-regression-app:latest
