# ctypedef double real_t

cdef class State:
#	cdef:
#		unsigned int n_particles
#		real_t *x
#		real_t *vx
	
	def __cinit__(self):
		pass
	
	def __dealloc__(self):
		pass
	
	cpdef real_t momentum(self):
		pass
	

def setup(input_fname):
	pass

cpdef run(State st):
	pass

cpdef int step(State st, real_t timestep):
	pass

def output(State st):
	pass

