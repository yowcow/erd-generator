DOCKER_IMAGE := erd-generator

all: erd
	git -C erd pull
	docker build -t $(DOCKER_IMAGE) .

erd:
	git clone git@github.com:BurntSushi/erd.git $@

INPUT := database.er
OUTPUT := database.svg

run: $(OUTPUT)

$(OUTPUT): $(INPUT)
	docker run --rm \
		-v `pwd`:/app \
		--workdir /app \
		$(DOCKER_IMAGE) erd -i $< -o $@

clean:
	rm -f database.svg

realclean: clean
	rm -rf erd
	docker rmi $(DOCKER_IMAGE)

.PHONY: all run clean realclean
