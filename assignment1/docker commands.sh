# Question 1 
docker build -t linear-regression-app:latest .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker images
docker login
docker tag linear-regression-app:latest chaserv27/linear-regression-app:latest
docker push chaserv27/linear-regression-app:latest
# Question 2
docker build -t linear-regression-volume:latest .
docker run --rm --volume "$(pwd)/data:/home/iem4723/data" linear-regression-volume:latest
ls data
# Question 3
docker build -t logistic_regression_layered:latest .
docker run --rm logistic_regression_layered:latest ls /home/iem4723/
docker run --rm --volume "$(pwd)/data:/home/iem4723/data" logistic_regression_layered:latest
ls data
# Question 4
docker build -t simple-file-server:latest . 
docker run --rm -d --name simple-file-server --publish 3333:8000 simple-file-server:latest
docker stop simple-file-server