fastmath is a JRE patch to provide faster Math functions.

To install the patch:
    make
    sudo make install

The code is based on Apache’s
[commons Math](http://commons.apache.org/proper/commons-math/). While adding this
library to your classpath and replacing calls to java.lang.Math with calls to
org.apache.commons.math3.util.FastMath is enough for most cases, this JRE is
useful in cases where you don’t control the code calling Math. For example,
classes in java.awt.geometry tend to call acos a lot.
