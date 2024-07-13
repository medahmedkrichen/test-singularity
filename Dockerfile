FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime


RUN apt-get update

 
RUN DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --no-install-recommends --quiet \
    unzip \
    git-all

RUN pip3 install --no-cache torch==2.2.2 \
    transformers==4.41.2 \
    huggingface \
    accelerate \
    jinja2==3.1.0 \
    moviepy \
    pyannote.audio \
    torchvision \
    speechbrain==0.5.16 \
    pytorch-lightning==2.3.0




RUN apt-get update && \
        python3.7 \
        ffmpeg \
    rm -rf /var/lib/apt/lists/*
