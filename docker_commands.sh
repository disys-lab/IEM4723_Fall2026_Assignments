# Question 1
    docker build -t linear-regression-app .  #builds and names a new docker image
    docker tag linear-regression-app linear-regression-app:v0.1.1 #tags another version of the image
    docker tag linear-regression-app linear-regression-app:v0.1.2 #tags another version of the image
    docker tag linear-regression-app lukediener/linear-regression-app:latest #retags the image with my username
    docker push lukediener/linear-regression-app:latest #pushes to remote Docker GitHub repo

# Question 2
    #build the volume mounting container image
    docker build -t volume_app:latest .

    #run the container with volume mounting to sync host and container data
    docker run --name volume_test --volume C:\Users\luked\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\volume-mounting\data\:/home/iem4723/data/ -d volume_app:latest

# Question 3
    #build the layered logistic regression container image
    docker build -t logistic_regression_layered:latest .

    #run the container with volume mounting to sync host and container data
    docker run --name layering_test --volume C:\Users\luked\Documents\GitHub\IEM4723_Fall2026_Assignments\assignment1\layering\data\:/home/iem4723/data/ -d logistic_regression_layered:latest

# Question 4
