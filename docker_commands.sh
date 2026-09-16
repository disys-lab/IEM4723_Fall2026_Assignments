#Question 1
docker build -t linear-regrssion-app . 

docker tag linear-regression-app linear regression-app:v0.1.1
docker tag linear-regression-app linear regression-app:v0.1.2

docker tag linear-reggression-app lkokal/linear-regression-app:latest

docker push lkokal/linear-regression-app:latest


#Question 2
docker run --rm --volume "C:\Users\laura\OneDrive\Documents\Github\IEM4723_Fall2026_Assignments\assignment1\volume-mounting\data:/home/iem4723/data" linear-regression-volume
