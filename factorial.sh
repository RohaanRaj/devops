#!/bin/bash
a=5
b=1
for i in { $a.. 0..-1};do
	b=$((b*a))
done
echo $b
