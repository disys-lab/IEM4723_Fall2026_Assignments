#Question 1
··• cd /run/media/poisonoftheclockwork/3C02D63C02D5FABA/School/S7Fall2026/"InfoSys Design"/Assignments/Assignment1/IEM4723_Fall2026_Assignments/assignment1/regression_container
··• pwd
··• docker build -t linear-regression-app .
··• docker tag linear-regression-app linear-regression-app:v0.1.1
··• docker tag linear-regression-app linear-regression-app:v0.1.2
··• docker tag linear-regression-app connornrice/linear-regression-app:latest

#Question 2
··• cd /run/media/poisonoftheclockwork/3C02D63C02D5FABA/School/S7Fall2026/"InfoSys Design"/Assignments/Assignment1/IEM4723_Fall2026_Assignments/assignment1/volume-mounting/
··• pwd
··• sudo docker build -t regressor:0 .
··• sudo docker volume create data_volume
··• sudo docker run -v data_volume:/home/iem4723/ regressor:0
#as far as I can tell this just does not actually create and share the intended folder, but it does print the predictions
#I spent approximately 3-4 hours trouble shooting the mounting commands with the AI and searching and cannot for the life of me determine why *docker run -v "/run/media/poisonoftheclockwork/3C02D63C02D5FABA/School/S7Fall2026/InfoSys Design/Assignments/Assignment1/IEM4723_Fall2026_Assignments/assignment1/volume-mounting/data/":/home/iem4723/data regressor:0* does not work - as it gives "IsADirectoryError: [Errno 21] Is a directory: '/home/iem4723/data/stream.csv'" which apparently neither I nor the Docker AI can parse how to fix it from there
