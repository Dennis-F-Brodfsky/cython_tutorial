# Cython Tutorial

the website of the book : [https://github.com/cythonbook/examples]

## A Toolkit

A pyx related Makefile is shown in the main root which used to conviniently compiled pyx file. Before used it,Remeber replace the first row of Make file in order to match the pyx file (of course place it in the project file is needed). 

then just run $make -f Makefile is ok

**Warning: ** Sometimes you'd better modify the line `gcc .o -o .so` to adaptive the library you need.

