FROM ubuntu:14.04.5
MAINTAINER Juvy Cagape <cagapejuvy@gmail.com>

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Download and install wkhtmltopdf
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
RUN tar -xvf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN cd wkhtmltox/bin/
RUN sudo mv wkhtmltopdf  /usr/bin/wkhtmltopdf
RUN sudo mv wkhtmltoimage  /usr/bin/wkhtmltoimage
RUN sudo apt-get install libxrender1

# Show the extended help
CMD ["-h"]
