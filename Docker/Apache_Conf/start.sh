#!/bin/bash

sudo docker build -t custom-apache .
sudo docker run --name custom-apache --network custom-network -p 8080:8080 -d custom-apache
