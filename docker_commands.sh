# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest elijah822/linear-regression-app:latest
docker push elijah822/linear-regression-app:latest

# Question 2
docker build -t volume-mounting-app .
docker run --rm --volume "%cd%\data:/home/iem4723/data" volume-mounting-app

# Question 3
docker build -t logistic_regression_layered:latest .
docker run --rm logistic_regression_layered:latest ls -l /home/iem4723/
docker run --rm --volume "%cd%\data:/home/iem4723/data" logistic_regression_layered:latest

# Question 4
docker build -t simple_file_server .
docker run --rm --publish 3333:8000 simple_file_server