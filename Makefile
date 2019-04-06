all: build push
test: build pushtest

build:
	docker build -t demilletech/alpine-composer:local . 

push:
	docker tag demilletech/alpine-composer:local demilletech/alpine-composer:latest
	docker push demilletech/alpine-composer:latest

pushtest:
	docker tag demilletech/alpine-composer:local demilletech/alpine-composer:test
	docker push demilletech/alpine-composer:latest
