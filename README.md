<b>challenge:</b>

The following sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rules above and starting with 10, we generate the following sequence:

10 → 5 → 16 → 8 → 4 → 2 → 1
This sequence (starting at 10 and finishing at 1) contains 7 terms. 

Write a program to determine which starting number, under one million, produces the longest chain of terms, ending at 1.


<b>solution:</b>

<b>1)</b> Create a method that calculates the length of the chain of terms produced by a given positive integer. 

<b>2)</b> Pair integers between 1 and 1000000 with the length of the chain of terms they produce.

<b>3)</b> Identify the chain with the longest length and the integer that produced that chain. 
