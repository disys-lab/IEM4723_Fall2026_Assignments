# question 1
docker build -t linear-regression-app . 
docker tag linear-regression-app:latest linear-regression-app:v0.1.1 
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest jacobj04/linear-regression-app:latest
docker push jacobj04/linear-regression-app:latest

# question 2
docker build -t volume-regression-app:latest .
docker run --name volume_regression --volume "C:/Users/bubba/Documents/GitHub/IEM4723_Fall2026_Assignments/assignment1/volume-mounting/data:/home/iem4723/data" -d volume-regression-app:latest

# question 3
docker build -t logistic_regression_layered:latest .
docker run --name logistic_regression_container --volume "C:/Users/bubba/Documents/GitHub/IEM4723_Fall2026_Assignments/assignment1/layering/data:/home/iem4723/data" logistic_regression_layered:latest 