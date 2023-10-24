
# Pull Kali Linux OS from a Docker Hub repository
FROM kalilinux/kali-rolling


#LABEL authors = "PabloDorrego 22040682"
#LABEL version = "1.0"
# Update the image
RUN apt-get update

# Install the following packages for our custom image
RUN apt-get install -y \
    nmap \
    nano \
    pip
#RUN apt-get clean


# Set credentials
ENV USER root
ENV PASSWORD 22040682

RUN pip install --upgrade pip
# Reduce the size of the image 
RUN pip install jupyter
RUN apt-get clean
# Expose ports for nmap and metasploit
EXPOSE 600 700

# Run the following commands when the container is created
CMD ["bash"]
