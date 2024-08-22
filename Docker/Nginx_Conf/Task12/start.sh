#!/bin/bash

sudo docker build -t custom-nginx .
sudo docker run --name custom-nginx --network custom-network -p 443:443 -d custom-nginx