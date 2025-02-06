# Unexpected Exit with Catch and Proc in Tcl

This repository demonstrates an uncommon error in Tcl related to using the `catch` command with a procedure that uses `exit`.  The `exit` command within the error-handling procedure terminates the script prematurely, leading to unexpected behavior.  The solution shows how to properly handle errors without prematurely ending the script.

## Bug
The `bug.tcl` file contains the buggy code. It uses `catch` to handle errors, but the error-handling procedure exits, causing issues.

## Solution
The `bugSolution.tcl` file shows the corrected code. Instead of exiting, the procedure returns an error code, which the `catch` command can handle gracefully.