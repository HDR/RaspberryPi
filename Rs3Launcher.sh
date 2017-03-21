#!/bin/bash
java -Xmx512m -Djava.class.path=/home/pi/.jagex/runescape/bin/jagexappletviewer.jar -Dcom.jagex.config=$"http://www.runescape.com/k=3/l=en/jav_config.ws" jagexappletviewer $USERNAME/.jagex/runescape/images
