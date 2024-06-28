FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime


RUN apt-get update


RUN DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --no-install-recommends --quiet \
    unzip \
    git-all

RUN pip3 install --no-cache pytube \
    moviepy \
    crepe \
    pydub \
    librosa \
    opencv-python \
    pytesseract \
    fer \
    pyannote.audio \
    pytorch-lightning==2.3.0 \
    speechbrain==1.0.0 \    
    accelerate \
    torchvision \
    torchaudio \
    transformers \
    sentence-transformers 


RUN pip3 uninstall opencv-python-headless -y 

RUN pip3 install opencv-python --upgrade

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       
        unzip \
        wget \
        git \
        python3.7 \
        zlib1g-dev \
        ffmpeg \
	vim && \
    rm -rf /var/lib/apt/lists/*
