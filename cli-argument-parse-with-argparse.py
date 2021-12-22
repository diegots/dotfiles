#!/usr/bin/env python3

# Minimal example showcasing how to use module argparse in Python

import argparse

arg_parser = argparse.ArgumentParser()
arg_parser.add_argument('-f', '--first', required=True, help='Ayuda 1º arg')
arg_parser.add_argument('-s', '--second', required=True, help='Ayuda 2º arg')
arg_parser.add_argument('-t', '--third', required=True, help='Ayuda 3º arg')

args = vars(arg_parser.parse_args())

print(args["first"])
print(args["second"])
print(args["third"])
