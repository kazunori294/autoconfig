require 'pty'
require 'expect'
require 'open-uri'
require './module/ios/echo_module'
require './module/ios/applyconfig_module'
require './module/ios/verifyconfig_module'
require './module/ios/enablessh_module'


class IOS
  include Applyconfig
  include Verifyconfig
  include Enablessh


  def initialize(device)
    @device = device
  end
 
  def echo(lists)
    lists.each_line do |list|
         puts list
    end
  end

end



