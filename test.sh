#!/bin/bash

echo "Testing Service 1..."
curl -s http://localhost:8080/service1/ping
echo
curl -s http://localhost:8080/service1/hello
echo

echo "Testing Service 2..."
curl -s http://localhost:8080/service2/ping
echo
curl -s http://localhost:8080/service2/hello
