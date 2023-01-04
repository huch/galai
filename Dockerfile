# PyTorch + GPU imag
# get 1.12.1 (2.76 GB vs 4.92 GB for the 1.13.1-version)
FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime     

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install notebook \
    galai

WORKDIR /notebooks
