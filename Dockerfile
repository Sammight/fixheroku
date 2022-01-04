#Grab the latest alpine image
FROM heroku/heroku:20

# Install python and pip
RUN apt install sudo
RUN adduser myuser --defaults --password vM6r7p2#6
RUN usermod -aG sudo myuser
#RUN apk add --no-cache --update python3 py3-pip bash
#ADD ./webapp/requirements.txt /tmp/requirements.txt

# Install dependencies
#RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

# Add our code
#ADD ./webapp /opt/webapp/
#WORKDIR /opt/webapp

# Expose is NOT supported by Heroku
# EXPOSE 5000 		

# Run the image as a non-root user
#RUN adduser myuser
#USER myuser

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
#CMD gunicorn --bind 0.0.0.0:$PORT wsgi 
