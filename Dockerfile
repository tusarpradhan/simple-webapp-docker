#FROM alpine
#FROM nginx
#FROM tomcat:8.0

#COPY user/User.html /usr/local/tomcat/webapps/user/


#CMD ["catalina.sh", "run"]



FROM centos

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
#CMD /bin/bash

RUN yum update
RUN yum install -y python3 
RUN yum install python3-pip
#RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip install flask 

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
