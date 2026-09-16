#Killian Barnes

# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker login
docker tag linear-regression-app:latest killianbarnes2/linear-regression-app:latest
docker push killianbarnes2/linear-regression-app:latest

# Question 2
docker run -t linear-regression-app-volume
docker run --rm -v "$(pwd)/data:/home/iem4723/data" linear-regression-app-volume

# Question 3
docker build -t logistic_regression_layered:latest .
docker run --rm -v "$(pwd)/data:/home/iem4723/data" logistic_regression_layered:latest

# Question 4
docker build -t simple_file_search:latest .
docker run --publish 3333:8000 simple_file_search:latest