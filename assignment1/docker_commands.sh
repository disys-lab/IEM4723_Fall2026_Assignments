#Question 1
docker build -t linear-regression-app . 

docker tag linear-regression-app linear-regression-app:v0.1.1
docker tag linear-regression-app linear-regression-app:v0.1.2

docker tag linear-regression-app lkokal/linear-regression-app:latest

docker push lkokal/linear-regression-app:latest
docker push lkokal/linear-regression-app:v0.1.1
docker push lkokal/linear-regression-app:v0.1.2


#Question 2
docker run --rm --volume "C:\Users\laura\OneDrive\Documents\Github\IEM4723_Fall2026_Assignments\assignment1\volume-mounting\data:/home/iem4723/data" linear-regression-volume


#Question 3
docker build -t logistic_regression_layered:latest ./layering
docker run --rm --volume "C:\Users\laura\OneDrive\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data" logistic_regression_layered:latest


#Question 4
docker run --rm -p 3333:8000 simple-file-server:latest
