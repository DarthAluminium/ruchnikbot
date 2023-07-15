#python3.6 was chosen because I used this version to write my program for kursach ;(@_@)\
FROM python:3.10-alpine
#Meta data
LABEL maintainer="Loginov Ivan"
#installation of required package for my program
RUN python3 -m pip install pytelegrambotapi
#copy my program to docker
COPY bot.py bot.py
#run program
ENV TGBOT_TOKEN=0
CMD python3 bot.py

# The program calculates the average number of dominating sets
# in a 10-vertex graph with the probability of an edge appearing 
# between vertices from 0.0 to 1.0 with a step of 0.01