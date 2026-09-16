#Andrew Gungoll

#Question 1                                     

docker build -t linear-regression-app:v0.1.1 -t linear-regression-app:v0.1.2 .
docker tag linear-regression-app:v0.1.2 zicotix/linear-regression-app:latest
docker push zicotix/linear-regression-app:latest 

