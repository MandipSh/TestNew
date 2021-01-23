#!/usr/bin/python
import random
import sys

letters = [chr(ord('a')+i) for i in range(26)]

def generate_name():
    name = ""
    for i in range(9):
        name = name + random.choice(letters)
    return "Testing_Mark[" + name + "]";

def main():
    generate_name();
    # print command line arguments
    #for arg in sys.argv[1:]:
        #print arg

if __name__ == "__main__":
    main()