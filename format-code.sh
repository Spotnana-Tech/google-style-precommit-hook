#!/usr/bin/env sh
mkdir -p .cache
cd .cache
if [ ! -f google-java-format-1.19.1-all-deps.jar ]
then
    curl -LJO "https://github.com/google/google-java-format/releases/download/v1.19.1/google-java-format-1.19.1-all-deps.jar"
    chmod 755 google-java-format-1.19.1-all-deps.jar
fi
cd ..

java -jar .cache/google-java-format-1.19.1-all-deps.jar --replace $@
