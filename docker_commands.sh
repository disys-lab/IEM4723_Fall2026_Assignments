# Question 1
cd "C:\Users\18179\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\regression_container"; git init
docker build -t linear-regression-app .
docker tag linear-regression-app:v0.1.1
docker tag linear-regression-app:v0.1.2
docker tag linear-regression-app morrowe/linear-regression-app:latest
docker push morrowe/linear-regression-app:latest

# Question 2
docker run -v C:\path\to\data:/app/data morrowe/linear-regression-app:latest

# Question 3
docker build -t logistic_regression_layered:latest .
docker run -v C:\Users\18179\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data logistic_regression_layered:latest

# Question 4
docker build -t simple_file_server .
docker run -p 3333:8000 -v C:\Users\18179\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\layering\data:/home/iem4723/data logistic_regression_layered:latest
