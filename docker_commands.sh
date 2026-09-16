#Andrew Gungoll

#Question 1                                     

docker build -t linear-regression-app:v0.1.1 -t linear-regression-app:v0.1.2 .
docker tag linear-regression-app:v0.1.2 zicotix/linear-regression-app:latest
docker push zicotix/linear-regression-app:latest 

#Question 2

docker build -t regression-volume .
docker run --volume "$(pwd)\data:/home/iem4723/data" regression-volume

