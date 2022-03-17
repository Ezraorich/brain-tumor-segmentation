sudo docker run hello-world

sudo docker exec -ti gpu_good bash
sudo docker run --runtime=nvidia --rm nvidia/cuda:11.0-base nvidia-smi
docker run --gpus 'all,"capabilities=compute,utility"' image_name bash

sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
ENV cudnn_version=8.1
sudo docker run --gpus 'all,"capabilities=compute,utility"' -it --name gpuco --mount type=bind,source=/home/passion/Documents/dockerfiles,target=/tf/notebooks -p 8888:8888 tensorflow/tensorflow:latest-gpu-jupyter
