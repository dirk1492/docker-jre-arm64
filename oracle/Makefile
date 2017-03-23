.PHONY: build push
 
VERSION = 8u121
KEY=e9e7ea248e2c4826b92b3f075a80e441
BUILD=b13
OS=ubuntu-slim
TAGS = $(VERSION)-oracle 8-oracle jre8-oracle 
REPO = dil001/docker-jre-arm64

build:
	docker build --build-arg VERSION=$(VERSION) --build-arg BUILD=$(BUILD) --build-arg KEY=$(KEY) -t $(REPO):$(VERSION)-$(OS) .

	for tag in $(TAGS); do \
                docker tag $(REPO):$(VERSION)-$(OS) $(REPO):$$tag ; \
        done 

push:
	docker -- push $(REPO):$(VERSION)-$(OS)
	for tag in $(TAGS); do \
                docker push $(REPO):$$tag ; \
        done 

clean:
	docker rmi $(REPO):$(VERSION)-$(OS)
	for tag in $(TAGS); do \
                docker rmi $(REPO):$$tag ; \
        done 
