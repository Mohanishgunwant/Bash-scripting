#!/bin/bash

echo "this is self destructive script named $0 and it is going to end itself at the execution"
rm -rf $0
