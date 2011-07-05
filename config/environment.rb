# Load the rails application
require File.expand_path('../application', __FILE__)
#quick fix for jquiery-ui open ssl problems, comment out after installing.
#require 'openssl'
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# Initialize the rails application
Testaggregator::Application.initialize!
