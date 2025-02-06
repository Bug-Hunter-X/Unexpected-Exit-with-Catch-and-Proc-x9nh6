proc error_proc {msg} {
  puts stderr "ERROR: $msg"
  exit 1
}

proc my_proc {} {
  # Some code that might throw an error
  catch {invalid command} error_proc
}

my_proc