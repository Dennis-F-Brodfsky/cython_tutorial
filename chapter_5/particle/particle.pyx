cdef class Particle:
	cdef readonly double mass, position, velocity
	def __init__(self, double m, double p, double v):
		self.mass = m
		self.position = p
		self.velocity = v
	
	# cdef cannot be refered outside extension file
	cdef double get_momentum_(self):
		return self.mass * self.velocity

	# cpdef combine def with cdef, which means cpdef is faster than def while can be accessed in .py file
	cpdef double get_momentum(self):
		return self.mass * self.velocity

	property momentum:
	def __get__(self):
		return self.mass * self.velocity

	def __set__(self, m):
		self.velocity = m / self.mass

def add_momentum(list particles):
	cdef double total_mom = 0.0
	cdef Particle particle
	for particle in particles:
		total_mom += particle.get_momentum_()
	return total_mom

cdef class CParticle(Particle):
	cdef double momentum
	def __init__(self, m, v, p):
		super().__init__(m, v, p)
		self.momentum = self.mass * self.velocity
	cpdef double get_momentum(self):
		return self.momentum

	cdef double get_momentum_(self):
		return self.momentum