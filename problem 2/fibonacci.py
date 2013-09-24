# -*- coding: utf-8 -*-


def fibonacci(number):
    if number < 2:
        return number
    else:
        return fibonacci(number - 1) + fibonacci(number - 2)


def sum_of_even_valued_terms():
    i = 1
    sum = 0
    while sum < 4000000:
        num = fibonacci(i)
        i += 1

        if num % 2 == 0:
            sum += num

    return sum
