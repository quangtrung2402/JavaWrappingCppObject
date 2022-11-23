# JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/
export "JAVA_HOME=\$(/usr/libexec/java_home)"

CC=g++
LIBRARY_OUTPUT=libjni.so

build_jni_lib:
	$(CC) -shared -o ./lib/$(LIBRARY_OUTPUT) ./jni/src/ObjectJni.cpp -fPIC -I"$(JAVA_HOME)/include" -I"$(JAVA_HOME)/include/linux" -Wall 

cleanJava:
	find . -type f -iname \*.class -delete
