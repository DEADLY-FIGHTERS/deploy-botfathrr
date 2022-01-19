FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/deadly-fighters/Deadly-spam-bot-2.0.git /root/OfficialSameer
#working directory 
WORKDIR /root/OfficialSameer

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/OfficialSameer/bin:$PATH"

CMD ["python3","-m","OfficialSameer"]
