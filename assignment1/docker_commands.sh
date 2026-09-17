#question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest nadiaphan/linear-regression-app:latest
docker push nadiaphan/linear-regression-app:latest

#question 2
docker build -t volume-mounting-app .
docker run --volume "${PWD}\data:/home/iem4723/data" volume-mounting-app

#question 3
docker run --rm -v "${PWD}\data:/home/iem4723/data" logistic_regression_layered:latest

#question 4
docker run --rm -p 3333:8000 simple-file-server
