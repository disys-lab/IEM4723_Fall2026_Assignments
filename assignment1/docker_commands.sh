# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app linear-regression-app:v0.1.1
docker tag linear-regression-app linear-regression-app:v0.1.2
docker tag linear-regression-app emehen/linear-regression-app:latest
docker push emehen/linear-regression-app:latest

# Question 2
docker run --volume ./data:/home/iem4723/data volume-mounting-app

# Question 3
docker build -t logistic_regression_layered:latest .
docker run --volume ./data:/home/iem4723/data logistic_regression_layered:latest

# Question 4
docker run --publish 3333:8000 port-listening-appit 
