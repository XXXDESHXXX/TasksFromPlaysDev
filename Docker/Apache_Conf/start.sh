#!/bin/bash

sudo docker build -t custom-apache .
sudo docker run --name custom-apache --network custom-network -p 8083:8083 -d custom-apache
