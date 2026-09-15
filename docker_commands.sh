# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker images linear-regression-app
docker tag linear-regression-app:latest mkuhn23/linear-regression-app:latest
docker push mkuhn23/linear-regression-app:latest

# Question 2
docker build -t volume-mounting-app .
docker run --rm --volume "${PWD}\data:/home/iem4723/data" volume-mounting-app

# Question 3
docker build -t logistic_regression_layered:latest .
