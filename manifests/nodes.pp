node 'basenode' { 
  include baseclass
}
 
node '*.cassini.local' inherits basenode { 
  # this is a standard cassini node
}
