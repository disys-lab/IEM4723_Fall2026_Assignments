#Question 1
CD C:\Infosys\IEM4723_Fall2026_Assignments\assignment1\regression_container
docker build -t linear-regression-app .
docker tag linear-regression-app zacharypontikes/linear-regression-app:v0.1.1
docker tag linear-regression-app zacharypontikes/linear-regression-app:v0.1.2
docker tag linear-regression-app zacharypontikes/linear-regression-app:latest
docker push linear-regression-app zacharypontikes/linear-regression-app:latest
#Question 2
cd C:\Infosys\IEM4723_Fall2026_Assignments\assignment1\volume-mounting
docker build -t volume-mounting-app:latest .
docker run --name volume-mounting-app --volume C:\Infosys\IEM4723_Fall2026_Assignments\assignment1\volume-mounting\data:/home/iem4723/data volume-mounting-app:latest python /home/iem4723/Regressor.py
dir .\data
git add data/regression_coefficients.csv
cd C:\Infosys\IEM4723_Fall2026_Assignments\assignment1
git add docker_commands.sh
#Question 3
notepad .\Dockerfile
cd C:\Infosys\IEM4723_Fall2026_Assignments\assignment1\layering
docker build -t logistic_regression_layered:latest .
docker run --name logistic_regression_app --volume C:\Infosys\IEM4723_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data logistic_regression_layered:latest
git add Dockerfile
git add data/logistic_regression_coefficients.csv
#Question 4
cd C:\Infosys\IEM4723_Fall2026_Assignments\assignment1\port_listening
docker build -t port_listening_app:latest .
docker run --name port_listening_app --publish 3333:8000 -d port_listening_app:latest

