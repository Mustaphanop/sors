FROM mustaphanopz/sors1:slim-buster

#clonning repo 
RUN git clone https://github.com/mustaphanop/sors1 /root/ZESOURCE 
#working directory 
WORKDIR /root/ZESOURCE 

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/SourceZe/bin:$PATH"

CMD ["python3","-m","SourceZe"]
