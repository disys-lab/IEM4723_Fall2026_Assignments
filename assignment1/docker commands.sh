# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app linear-regression-app:v0.1.1
docker tag linear-regression-app linear-regression-app:v0.1.2
docker tag linear-regression-app:latest daytonmccall/linear-regression-app:latest
docker push daytonmccall/linear-regression-app:latest


# Question 2
docker build -t volume-regression-app:latest .
docker run --name regression_volume --volume "%cd%\data:/home/iem4723/data" -d volume-regression-app:latest

# Question 3


# Question 4

