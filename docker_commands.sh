# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest elijah822/linear-regression-app:latest
docker push elijah822/linear-regression-app:latest

# Question 2
docker run --rm --volume "%cd%\data:/home/iem4723/data" volume-mounting-app

# Question 3


# Question 4