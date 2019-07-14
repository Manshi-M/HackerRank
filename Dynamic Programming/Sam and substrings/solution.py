#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the substrings function below.
def substrings(n):
    l=len(n)
    res = 0;
    f = 1;
    MOD = (pow(10,9)+7)
    for i in range(l-1,-1,-1):
        res = (res + (int(n[i])-int('0'))*f*(i+1)) % MOD
        f = (f*10+1) % MOD
    return res


if __name__ == '__main__':

    n = input()

    result = substrings(n)
    print(result)
