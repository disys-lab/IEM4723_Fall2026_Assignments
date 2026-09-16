#Andrew Gungoll

#Question 1                                     

docker build -t linear-regression-app:v0.1.1 -t linear-regression-app:v0.1.2 .
docker tag linear-regression-app:v0.1.2 ttvzicotix/linear-regression-app:latest
docker push zicotix/linear-regression-app:latest 

