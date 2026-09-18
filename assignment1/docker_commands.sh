Assignment 1: Docker Commands

# Question 1
cd C:\Users\kailu\OneDrive\Documents\IEM4723\IEM4723_Fall2026_Assignments\assignment1\regression_container
docker build -t linear-regression-app .
docker tag linear-regression-app linear-regression-app:v0.1.1
docker tag linear-regression-app linear-regression-app:v0.1.2
docker tag linear-regression-app mrfahrenheit451/linear-regression-app:latest
docker push mrfahrenheit451/linear-regression-app:latest

# Question 2
cd C:\Users\kailu\OneDrive\Documents\IEM4723\IEM4723_Fall2026_Assignments\assignment1\volume-mounting
docker build -t regression-app .
docker run --name regression-ctnr --volume ".\data:/home/iem4723/data" regression-app:latest 

# Question 3
cd C:\Users\kailu\OneDrive\Documents\IEM4723\IEM4723_Fall2026_Assignments\assignment1\layering
docker build -t logistic_regression_layered .
docker run --name layered-cntr --volume "C:\Users\kailu\OneDrive\Documents\IEM4723\IEM4723_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data" logistic_regression_layered:latest

# Question 4
cd C:\Users\kailu\OneDrive\Documents\IEM4723\IEM4723_Fall2026_Assignments\assignment1\port_listening
docker build -t question3-app .
docker run --name question3-app --publish 3333:8000 question3-app:latest

(Then docker stop question3-app and docker rm question3-app)

This works! I uploaded screenshot verification to the README along with the commit picture.
