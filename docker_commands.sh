# Question 1
cd assignment1/regression_container
docker build -t linear-regression-app:latest .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest nikrhodes67/linear-regression-app:latest
docker push nikrhodes67/linear-regression-app:latest
cd ../..

# Question 2
cd assignment1/volume-mounting
docker build -t volume-mounting-app .
docker run --rm --volume "$(pwd)/data:/home/iem4723/data" volume-mounting-app:latest
cd ../..

# Question 3
cd assignment1/layering
docker build -t logistic_regression_layered:latest .
docker run --rm --volume "$(pwd)/data:/home/iem4723/data" logistic_regression_layered:latest

# Question 4
cd assignment1/port_listening
docker build -t simple_file_server .
docker run --rm --publish 3333:8000 simple_file_server

