#!/usr/bin/env bash

docker build -t default_ubuntu .; docker run --rm -it default_ubuntu bash
