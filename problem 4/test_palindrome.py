# -*- coding: utf-8 -*-
import unittest
from palindrome import is_palindrome, largest_palindrome


class PalindromeTest(unittest.TestCase):
    def test_10_is_palindrome(self):
        self.assertEqual(is_palindrome(10), False)

    def test_22_is_palindrome(self):
        self.assertEqual(is_palindrome(22), True)

    def test_104_is_palindrome(self):
        self.assertEqual(is_palindrome(104), False)

    def test_202_is_palindrome(self):
        self.assertEqual(is_palindrome(202), True)

    def test_largest_palindrome_made_from_the_product_of_2_digits(self):
        self.assertEqual(largest_palindrome(10, 99), 9009)

    def test_largest_palindrome_made_from_the_product_of_3_digits(self):
        self.assertEqual(largest_palindrome(100, 999), 906609)


if __name__ == '__main__':
    unittest.main()
