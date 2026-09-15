# Question 1
cd regression_containter #navigates to current directory
docker build -t linear-regression-app .  #builds and names a new docker image
docker tag linear-regression-app linear-regression-app:v0.1.1 #tags another version of the image
docker tag linear-regression-app linear-regression-app:v0.1.2 #tags another version of the image
docker tag linear-regression-app lukediener/linear-regression-app:latest #retags the image with my username
docker push lukediener/linear-regression-app:latest #pushes to remote Docker GitHub repo

# Question 2


# Question 3

# Question 4