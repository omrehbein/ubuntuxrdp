FROM 32bit/ubuntu:16.04



# Install some libs to run the enviroment
RUN sudo apt-get update 

RUN apt-get update && apt-get install -y apt-transport-https
RUN echo 'deb http://private-repo-1.hortonworks.com/HDP/ubuntu14/2.x/updates/2.4.2.0 HDP main' >> /etc/apt/sources.list.d/HDP.list
RUN echo 'deb http://private-repo-1.hortonworks.com/HDP-UTILS-1.1.0.20/repos/ubuntu14 HDP-UTILS main'  >> /etc/apt/sources.list.d/HDP.list
RUN echo 'deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/azurecore/ trusty main' >> /etc/apt/sources.list.d/azure-public-trusty.list


RUN sudo apt-get install -y zip unzip
RUN sudo apt-get install -y sudo
RUN sudo apt-get install -y vim 
# for eclipse ides, not necessary for all
#RUN sudo apt-get install -y libpangox-1.0-0 
#RUN sudo apt-get install -y libpangoxft-1.0-0

# Install xrdp + xfce4
RUN sudo apt-get install -y xrdp
RUN sudo apt-get install -y xfce4
RUN sudo apt-get install -y xfce4-terminal
RUN sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
RUN sudo echo -e "root\nroot" | passwd root

COPY xrdp.ini /etc/xrdp/xrdp.ini
COPY personalstartup.sh /etc/init.d/personalstartup.sh
RUN chmod +x /etc/init.d/personalstartup.sh

EXPOSE 3389 

CMD /bin/bash






