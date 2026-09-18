#Given below is a Dockerfile that can be used to create a runtime environment for a simple linear regression example

FROM mrfahrenheit451/linear-regression-app:latest

WORKDIR /home/iem4723/

COPY ./LogisticRegressor.py /home/iem4723/LogisticRegressor.py

CMD ["python3", "LogisticRegressor.py"]