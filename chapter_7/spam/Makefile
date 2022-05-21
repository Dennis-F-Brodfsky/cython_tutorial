py_spam.so: py_spam.o spam.o
	@gcc py_spam.o spam.o -o py_spam.so -shared -pthread -B /home/adamsmith/anaconda3/compiler_compat -shared -Wl,-rpath,/home/adamsmith/anaconda3/lib -Wl,-rpath-link,/home/adamsmith/anaconda3/lib -L/home/adamsmith/anaconda3/lib -L/home/adamsmith/anaconda3/lib -Wl,-rpath,/home/adamsmith/anaconda3/lib -Wl,-rpath-link,/home/adamsmith/anaconda3/lib -L/home/adamsmith/anaconda3/lib
py_spam.o: py_spam.c
	@gcc -c py_spam.c -o py_spam.o -pthread -B /home/adamsmith/anaconda3/compiler_compat -Wno-unused-result -Wsign-compare -DNDEBUG -O2 -Wall -fPIC -O2 -isystem /home/adamsmith/anaconda3/include -I/home/adamsmith/anaconda3/include -fPIC -O2 -isystem /home/adamsmith/anaconda3/include -fPIC -I. -I/home/adamsmith/anaconda3/include/python3.9
spam.o: spam.c
	@gcc -c spam.c -o spam.o -pthread -B /home/adamsmith/anaconda3/compiler_compat -Wno-unused-result -Wsign-compare -DNDEBUG -O2 -Wall -fPIC -O2 -isystem /home/adamsmith/anaconda3/include -I/home/adamsmith/anaconda3/include -fPIC -O2 -isystem /home/adamsmith/anaconda3/include -fPIC -I. -I/home/adamsmith/anaconda3/include/python3.9 -c
py_spam.c: py_spam.pyx
	cython -3 py_spam.pyx
.PHONY: clean
clean:
	rm *.o *.so
