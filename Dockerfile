FROM python:3
ADD fib.py /
CMD [ "python","./fibonacii.py" ]