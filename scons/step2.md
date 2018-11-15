# Write your application 

Let's inspect through our application.
 
Our main app resides under `sconsfileapp` 

```shell  
.
../main.cc # Our Application
../SConstruct # SCons config file
../lib/ # Our standard C++ library header files 
``` 
 
+ Let create our libary headers and definitions under `sconsfileapp/lib/filewriter.hpp` and `sconsfileapp/lib/filewriter.cc` 

Header file: `sconsfileapp/lib/filewriter.hpp`

<pre class="file" data-filename="sconsfileapp/lib/filewriter.hpp" data-target="replace"> 
#ifndef FILEWRITER_H
#define FILEWRITER_H

class FileWriter
{
public:
    FileWriter(){}
    int add(int a, int b);
    int sub(int a, int b);
    int div(int a, int b);
    int mult(int a, int b);
    int sqr(int a);
    void close();
};
#endif // !FILEWRITER_H 
</pre>

And then our library class file: `sconsfileapp/lib/filewriter.cc`

<pre class="file" data-filename="sconsfileapp/lib/filewriter.cc" data-target="replace"> 
#include &ltfstream&gt
#include "filewriter.hpp"

std::ofstream resultfile("results.txt");

int FileWriter::add(int a, int b)
{
    int res;
    if (resultfile.is_open())
    {
        res = a + b;
        resultfile << "Addition \n" ;
        resultfile << res << std::endl;
    } else
    {
        res = 0;
    }
    return res;
}

int FileWriter::div(int a, int b)
{
    int res;
    if (resultfile.is_open())
    {
        res = a / b;
        resultfile << "Division \n" ;
        resultfile << res << std::endl;
    } else
    {
        res = 0;
    }
    return res;
}

int FileWriter::sub(int a, int b)
{
    int res;
    if (resultfile.is_open())
    {
        res = a - b;
        resultfile << "Subtraction \n" ;
        resultfile << res << std::endl;
    } else
    {
        res = 0;
    }
    return res;
}

int FileWriter::mult(int a, int b)
{
    int res;
    if (resultfile.is_open())
    {
        res = a * b;
        resultfile << "Multiplication \n" ;
        resultfile << res << std::endl;
    } else
    {
        res = 0;
    }
    return res;
}

int FileWriter::sqr(int a)
{
    int res;
    if (resultfile.is_open())
    {
        res = a * a;
        resultfile << "Squares \n" ;
        resultfile << res << std::endl;
    } else
    {
        res = 0;
    }
    return res;
}

void FileWriter::close()
{
    resultfile.close();
}
</pre>

+ Open `sconsfileapp/main.cc` and paste the following

<pre class="file" data-filename="sconsfileapp/main.cc" data-target="replace">
 
#include &ltiostream&gt
#include "./lib/filewriter.hpp"

FileWriter myWriter;

int main()
{
    int a = 64;
    int b = 8;
    int divRes = myWriter.div(a,b);
    int addRes = myWriter.add(a,b);
    int subRes = myWriter.sub(a,b);
    int multiRes = myWriter.mult(a,b);
    int sqrRes = myWriter.sqr(a);
        if (divRes = 0 && (b !=0 || a !=0))
    {
        std::cout << "There was an error in writing file" ;
    }
        if (addRes = 0 && (b > 0 && a > 0))
    {
        std::cout << "There was an error in writing file" ;
    }
        if (subRes = 0 && (a > 0))
    {
        std::cout << "There was an error in writing file" ;
    }
        if (multiRes = 0 && (b !=0 || a !=0))
    {
        std::cout << "There was an error in writing file" ;
    }
        if (sqrRes = 0 && (b !=0 || a !=0))
    {
        std::cout << "There was an error in writing file" ;
    }
        myWriter.close();

    return 0;
} 

</pre> 
 
+ The open  `sconsfileapp/SConstruct` and paste the following

<pre class="file" data-filename="sconsfileapp/SConstruct" data-target="replace">
Library('filewriter',['./lib/filewriter.cc'])
Program('main.cc', LIBS=['filewriter'], LIBPATH='.')
</pre> 
 
+ Next, let's build our app  
 