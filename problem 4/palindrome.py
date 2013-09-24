# -*- coding: utf-8 -*-


def is_palindrome(number):
    str_number = str(number)
    return str_number == str_number[::-1]


def largest_palindrome(initial, final):
    palindromes = []
    for i in range(initial, final+1):
        for j in range(initial, final+1):
            product = j * i
            if is_palindrome(product):
                palindromes.append(product)
    return max(palindromes)
