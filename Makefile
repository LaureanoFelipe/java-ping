build: 
	mvn clean
	mvn package

run:
	mvn spring-boot:run

test:
	mvn test

c_build:
	docker build -t felipelaureano/java-ping .

c_run_it: c_build
	docker run -it felipelaureano/java-ping /bin/bash

c_run:
	docker run -d -p 8080:8080 \
	-e MENSAGEM=Demonstração \
	java-ping
