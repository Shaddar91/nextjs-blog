#!/bin/bash
sed "s?YOUR-CURRENT-LOCATION?`pwd`?" -i docker-compose.yml
docker-compose up
