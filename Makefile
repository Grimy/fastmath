JAVA_HOME = /usr/lib/jvm/*
SRC = src/java/lang/StrictMath.java
CLASS = bin/java/lang/StrictMath.class

$(CLASS) : $(SRC)
	mkdir -p bin
	javac -sourcepath src -d bin "$<"

.PHONY: install
install: $(CLASS)
	cd bin; zip -rv $(JAVA_HOME)/jre/lib/rt.jar java
