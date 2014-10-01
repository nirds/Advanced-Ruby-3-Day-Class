require 'csp'

chan = CSP::Channel.new

CSP::Process.start { puts(chan.read) }
CSP::Process.start { chan << "Hello, World!" }