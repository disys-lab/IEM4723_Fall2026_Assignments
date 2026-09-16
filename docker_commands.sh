# Question 1
cd "C:\Users\18179\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\regression_container"; git init
docker build -t linear-regression-app .
docker tag linear-regression-app:v0.1.1
docker tag linear-regression-app:v0.1.2
docker tag linear-regression-app morrowe/linear-regression-app:latest
docker push morrowe/linear-regression-app:latest

# Question 2
docker run -v C:\path\to\data:/app/data morrowe/linear-regression-app:latest
