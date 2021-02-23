import unittest


class TestCase(unittest.TestCase):

    def __init__(self, *args, **kwargs):
        super(TestCase, self).__init__(*args, **kwargs)

    def test_sum(self):
        self.assertEqual(sum([1, 2, 3]), 6, "Should be 6")
