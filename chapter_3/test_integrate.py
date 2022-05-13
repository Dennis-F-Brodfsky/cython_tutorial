import integrate
import argparse


def func(string):
	return eval(string)


parse = argparse.ArgumentParser(prog='integrate')
parse.add_argument('-a', help='lower bound of integrate', 
		    default=0., type=float, dest='a')
parse.add_argument('-b', help='upper bound of integrate',
		    default=1., type=float, dest='b')
parse.add_argument('-f', help='lambda expression expected', required=True, type=func, dest='f')
arg = parse.parse_args()
print(integrate.integrate(arg.a, arg.b, arg.f))

