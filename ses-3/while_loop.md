We are making an infinite loop with while loop. First we are reading an input from the user with `read -p`, and then we are checking if the input is q, in which case we exit the loop.
The loop keeps running until we explicitly exit it.
We control the loop flow with `break` to exit when the user types "q", and `continue` to skip invalid input.
We did input validation by the regex pattern `^[0-9]+$` to check that the input is a number.
