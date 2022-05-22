from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize


ext_modules = [Extension("itgr", sources=["itgr.pyx","integrate.cpp"],language="c++")]
setup(name="itgr", ext_modules=cythonize(ext_modules))

