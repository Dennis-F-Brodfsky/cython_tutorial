from simulator cimport State, step, real_t
from simulator import setup as sim_setup


cdef class NewState(State):
	cdef:
		pass

	def __cinit__(self):
		pass
	
	def __dealloc__(self):
		pass

def setup(fname):
	sim_setup(fname)
	print("this is new setup")

cpdef run(State st):
	pass

