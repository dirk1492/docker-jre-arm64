.PHONY: build push
 
TAG = 8u121
REPO = dil001/docker-jre-arm64

build:
	docker build -t $(REPO) .
	docker tag $(REPO) $(REPO):$(TAG)

rebuild:
	docker build --no-cache -t $(REPO):$(TAG) .
	docker tag $(REPO):$(TAG) $(REPO)

push:
	docker -- push $(REPO):$(TAG)
	docker -- push $(REPO)

clean:
	docker rmi $(REPO):$(TAG)
	docker rmi $(REPO)
