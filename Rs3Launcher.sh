#!/bin/bash
/usr/bin/java -Xmx256m -Djava.class.path=$HOME/.jagex/runescape/bin/jagexappletviewer.jar -Dcom.jagex.config=$"http://www.runescape.com/k=3/l=en/jav_config.ws" jagexappletviewer $USERNAME/.jagex/runescape/images
