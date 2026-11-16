OWNER_NAME ?= gcg
VERSION ?= v0.1
SAVE_LOCATION ?= /mnt/gcg/3_PMI/Docker/smash.tar
 
build:
	docker build --tag ${OWNER_NAME}/smash:${VERSION} .

save:
	docker image save ${OWNER_NAME}/smash:${VERSION} -o ${SAVE_LOCATION}