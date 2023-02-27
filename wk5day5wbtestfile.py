from wk5day5wb import *
# change sumString to python file name, you can change * to function name
import unittest

class SumStringTest(unittest.TestCase):

    def test_length_one(self):
        result1 = sum_intergers("h3ll0w0rld")
        self.assertEqual(result1,3)

    def test_uio(self):
        result = sum_intergers("The Great Depression lasted from 1929 to 1939.")
        self.assertEqual(result,3868)
        
    def test_no_occurences(self):
        self.assertFalse(sum_intergers("Dogs are our best friends."))

    def test_case_sensitive(self):
        result = sum_intergers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog")
        self.assertEqual(result,3635)

unittest.main()