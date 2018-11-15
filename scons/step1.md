# Setting Up SCons

We'll first download SCons v3.0.1  
`wget http://prdownloads.sourceforge.net/scons/scons-3.0.1.tar.gz `{{execute}}  
 
 Then unzip the downloaded artifact into any directory
 `tar -xzf scons-3.0.1.tar.gz`{{execute}} 

Then we'll install SCons using the following Python command 
`cd scons-3.0.1 && python setup.py install`{{execute}}

Let check if everything is working as expected  by creating a simple application
`cd .. && scons -v`{{execute}}  

`mkdir helloscons && \  
cd helloscons && \ touch app.c && \ touch SConstruct`{{execute}} 

<pre class="file" data-filename="helloscons/app.c" data-target="replace">
#include <stdio.h> 
int main() {
    printf("Hello Scons\n");
}
</pre>

<pre class="file" data-filename="helloscons/SConstruct" data-target="replace">
Program('app.c')
</pre>
 
Let's build

`scons`{{execute}} 

 
And execute 
`./app`{{execute}}

Let's clean that up now that we're sure SCons is working  
`cd .. && rm -fr helloscons`{{execute}}