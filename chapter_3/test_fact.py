import fact
import time
import argparse


def py_fact(n):
	if n <= 1:
		return 1
	return n * py_fact(n-1)


def run_time(trial: int, func, func_name: str, *args):
	t = time.time()
	for i in range(trial):
		func(*args)
	print(f"implement time for {func_name}: ", time.time()-t)


parse = argparse.ArgumentParser('test_fact')
parse.add_argument('-pt', default=10000, type=int, 
                    dest='py_trial', metavar='10000')
parse.add_argument('-ct', default=100000, type=int, 
                    dest='c_trial', metavar='100000')
parse.add_argument('-N', default=20, type=int, 
                    dest='n', metavar='20')
arg = parse.parse_args()
PY_TRIAL = arg.py_trial
C_TRIAL = arg.c_trial
N = arg.n

run_time(PY_TRIAL, py_fact, 'py_fact', N)
run_time(C_TRIAL, fact.typed_fact, 'typed_fact(python function)', N)
run_time(C_TRIAL, fact.wrap_c_fact, 'wrap_c_fact(c funtion wrapped)', N)
run_time(C_TRIAL, fact.cp_fact, 'hybrid c and python funtion', N)
print('result of 21! using each different function')
# fellow indicate that py_fact and typed_fact are actually Python function
print('py_fact: ', py_fact(21))
print('typed_fact: ', fact.typed_fact(21))
# the fellow indicate that wrap_c_fact and cp_fact have the feature of C function
print('wrap_c_fact: ', fact.wrap_c_fact(21))
print('cp_fact: ', fact.cp_fact(21))

