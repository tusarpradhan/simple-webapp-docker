FROM nginx
#FROM tomcat:8.0

#COPY user/User.html /usr/local/tomcat/webapps/user/


CMD ["catalina.sh", "run"]



#FROM ubuntu:latest

#RUN apt-get update && apt-get install -y python3 python3-pip

#RUN pip install flask 

#COPY app.py /opt/

#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
