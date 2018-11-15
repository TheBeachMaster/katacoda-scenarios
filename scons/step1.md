# Setting Up SCons

We'll first download SCons v3.0.1  
`wget http://prdownloads.sourceforge.net/scons/scons-3.0.1.tar.gz ` {{execute}}  
 
 Then unzip the downloaded artifact 
 `tar -xzf scons-3.0.1.tar.gz` {{execute}} 

Then we'll install SCons globally 
`cd scons-3.0.1 && python setup.py install` {{execute}}

Let check if everything is working as expected 
`cd .. && scons -V` {{execute}}  

`mkdir helloscons && \  
cd helloscons && \
echo '#include <stdio.h> int main(){ printf("Hello SCons\n");}' > app.c && \
echo "Program('app.c')" > SConstruct && \
scons` {{execute}}