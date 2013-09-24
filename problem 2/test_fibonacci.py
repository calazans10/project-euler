# -*- coding: utf-8 -*-
import unittest
from fibonacci import fibonacci, sum_of_even_valued_terms


class FibonacciTest(unittest.TestCase):
    def test_fibonacci_2(self):
        self.assertEqual(fibonacci(2), 1)

    def test_fibonacci_4(self):
        self.assertEqual(fibonacci(4), 3)

    def test_fibonacci_6(self):
        self.assertEqual(fibonacci(6), 8)

    def test_fibonacci_8(self):
        self.assertEqual(fibonacci(8), 21)

    def test_fibonacci_10(self):
        self.assertEqual(fibonacci(10), 55)

    def test_fibonacci_30(self):
        self.assertEqual(fibonacci(30), 832040)

    def test_sum_of_even_valued_terms_of_fibonacci_before_four_million(self):
        self.assertEqual(sum_of_even_valued_terms(), 4613732)

if __name__ == '__main__':
    unittest.main()
