#Andrew Gungoll

#Question 1  
cd assignment1                                   
cd regression_container
docker build -t linear-regression-app:v0.1.1 -t linear-regression-app:v0.1.2 .
docker tag linear-regression-app:v0.1.2 zicotix/linear-regression-app:latest
docker push zicotix/linear-regression-app:latest 
cd ..

#Question 2
cd volume-mounting
docker build -t regression-volume .
docker run --volume "$(pwd)/data:/home/iem4723/data" regression-volume
cd ..

#Question 3
cd layering
docker build -t logistic_regression_layered:latest . 
docker run --volume "$(pwd)/data:/home/iem4723/data" logistic_regression_layered:latest
cd ..
