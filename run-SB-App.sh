#!/bin/bash

#mkdir firstSpringBootApp \
#&& cd firstSpringBootApp \
wget -O firstSpringBootApp.zip "http://start.spring.io/starter.zip?name=firstSpringBootApp&groupId=com.thrymr&artifactId=firstSpringBootApp&version=0.0.1-SNAPSHOT&description=first+project+for+Spring+Boot&packageName=com.thrymr&type=maven-project&packaging=jar&javaVersion=1.8&language=java&bootVersion=1.5.3.RELEASE&dependencies=lombok&dependencies=devtools&dependencies=thymeleaf&dependencies=web" \
&& unzip firstSpringBootApp.zip \
&& mkdir ./src/main/java/com/thrymr/controller \
&& cp -b HomeController.java ./src/main/java/com/thrymr/controller/ \
&& cp -b index.html ./src/main/resources/templates/ \
&& cp -b application.properties ./src/main/resources/ \
&& rm -rf firstSpringBootApp.zip HomeController.java index.html application.properties \
&& curl -u 'sureshnamburi' https://api.github.com/user/repos -d '{"name":"firstSpringBootApp"}' \
&& echo "# firstSpringBootApp" >> README.md \
&& git init \
&& git add . && git add README.md \
&& git commit -m "first commit" \
&& git remote add origin https://github.com/sureshnamburi/firstSpringBootApp.git \
&& git push -u origin master \
&& mvn clean install spring-boot:run