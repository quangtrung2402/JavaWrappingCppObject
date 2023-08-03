JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/

CC=g++
LIBRARY_OUTPUT=libjni.so

build_jni_lib:
	$(CC) -shared -o ./lib/$(LIBRARY_OUTPUT) ./jni/src/ClientJNI.cpp ./jni/src/Object.cpp -fPIC -I"$(JAVA_HOME)/include" -I"$(JAVA_HOME)/include/linux" -Wall 

build_java:
	cd java && javac -h ../jni/hdr JavaWrapping.java

cleanJava:
	find . -type f -iname \*.class -delete

env:
	sudo apt-get install openjdk-17-jdk-headless build-essential
	
run:
	cd java && java -Djava.library.path=../lib/ JavaWrapping
