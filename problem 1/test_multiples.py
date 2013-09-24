# -*- coding: utf-8 -*-
import unittest
from multiples import sum_of_multiples


class MultiplesTest(unittest.TestCase):
    def test_sum_of_all_the_multiples_of_3_or_5_before_10(self):
        self.assertEqual(sum_of_multiples(10), 23)

    def test_sum_of_all_the_multiples_of_3_or_5_before_1000(self):
        self.assertEqual(sum_of_multiples(1000), 233168)

if __name__ == '__main__':
    unittest.main()
