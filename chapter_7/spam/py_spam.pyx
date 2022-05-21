# distutils: sources=["spam.c"]
cimport spam


def py_order_spam(int tons):
    spam.order_spam(tons)
