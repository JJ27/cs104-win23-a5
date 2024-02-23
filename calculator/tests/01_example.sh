#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

echo "Invoke your program with the \$CALCULATOR variable; an example is below"


# Test 01: Ensure the program runs without error with a simple, valid invocation.
if ! $CALCULATOR 1 + 1; then  # If the return code of $PROGRAM is non-zero (i.e. error)...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

# Test 03: Ensure program errors with an invalid operand
if $CALCULATOR 3 @ 2; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (3 @ 2) apparently succeeded?!'
  exit 1
fi

# Test 04: Ensure program has correct output with a valid operand
if [[ $($CALCULATOR 3 + 2) -ne 5 ]]; then  # If the output of the program is not 5...
  echo 'ERROR! A valid run of the calculator (3 + 2) failed to produce 5 as an output!'
  exit 1
fi

# Test 05: Ensure program has correct output for division operation
if [[ $($CALCULATOR 10 / 2) -ne 5 ]]; then  # If the output of the program is not 5...
  echo 'ERROR! A valid run of the calculator (10 / 2) failed to produce 5 as an output!'
  exit 1
fi

# Test 06: Ensure program has error for division by zero
if $CALCULATOR 10 / 0; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (10 / 0) apparently succeeded?!'
  exit 1
fi
