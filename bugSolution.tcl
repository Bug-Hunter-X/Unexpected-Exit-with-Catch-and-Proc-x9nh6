proc error_proc {msg} {
  puts stderr "ERROR: $msg"
  return -code error
}

proc my_proc {} {
  # Some code that might throw an error
  catch {invalid command} error_proc
  if { [errorCode] != "" } {
    puts "Error occurred: [errorCode]"
  }
}

my_proc