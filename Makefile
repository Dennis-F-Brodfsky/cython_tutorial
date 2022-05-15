FILENAME = pyx_file
CFLAGS := $(shell python3-config --cflags)
LDFLAGS := $(shell python3-config --ldflags)


$(FILENAME).so: $(FILENAME).o
	@gcc $(FILENAME).o -o $(FILENAME).so -shared $(LDFLAGS)
$(FILENAME).o: $(FILENAME).c
	@gcc -c $(FILENAME).c -o $(FILENAME).o $(CFLAGS)
$(FILENAME).c: $(FILENAME).pyx
	cython -3 -a $(FILENAME).pyx
.PHONY: clean
clean:
	rm *.o *.so *.html 
