#!/bin/bash

sudo docker build -t custom-nginx .
sudo docker run --name custom-nginx -p 80:80 -d custom-nginx