# Question 1 
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest linear-regression-app:latest
docker push cesarv817/linear-regression-app:latest
# Question 2
docker build -t volume-mounting .
docker run --volume "C:\Users\cesar\OneDrive\Documents\GitHub\IEM_Fall2026_Assignments\assignment1\volume-mounting\data:/home/iem4723/data" volume-mounting
# Question 3
docker build -t logistic_regression_layered:latest
docker run --volume "C:\Users\cesar\OneDrive\Documents\GitHub\IEM_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data" logistic_regression_layered:latest
# Question 4
docker build -t simple_file_server:latest .
docekr run -d --publish 3333:8000 simple _file_server:latest