from distutils.core import setup, Extension
from Cython.Build import cythonize

ext = Extension("spam",
                sources=["py_spam.pyx", "spam.c"])

setup(name="spam",
      ext_modules = cythonize([ext]))
