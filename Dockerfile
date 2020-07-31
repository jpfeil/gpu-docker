FROM nvcr.io/nvidia/tensorflow:20.07-tf2-py3

RUN apt-get update --fix-missing

RUN apt-get install -y wget \
                       apt-utils \
                       git \
		       build-essential \
		       curl \
		       python3-dev \
		       python3-pip \
		       python3-venv 

WORKDIR /opt

COPY run.py /opt/run.py

WORKDIR /data 

ENTRYPOINT ["python3", "/opt/run.py"]
CMD [""]
