#!/bin/bash
docker build -t divyashree27/dev-react-app .
docker tag divyashree27/dev-react-app:latest divyashree27/dev-react-app:dev
docker push divyashree27/dev-react-app:dev

