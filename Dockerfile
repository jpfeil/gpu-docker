FROM nvidia/cuda:10.2-cudnn7-runtime-ubuntu18.04

RUN apt-get update --fix-missing

RUN apt-get install -y wget \
                       apt-utils \
                       git \
		       build-essential \
		       curl \
		       python3-dev \
		       python3-pip \
		       python3-venv 

RUN pip3 install tensorflow-gpu

WORKDIR /opt

COPY run.py /opt/run.py

WORKDIR /data 

ENTRYPOINT ["python3", "/opt/run.py"]
CMD [""]
