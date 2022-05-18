from libc.stdlib cimport malloc, free
# before compile pyx, do remember to import this!!!!!

cdef class Matrix:
	cdef:
		unsigned int nrows, ncols
		double* _matrix	
	def __cinit__(self, nr, nc):
		self.nrows = nr
		self.ncols = nc
		self._matrix = <double*>malloc(nr*nc*sizeof(double))
		if self._matrix == NULL:
			raise MemoryError()
	
	def __dealloc__(self):
		if self._matrix != NULL:
			free(self._matrix)
	

## to be continue....