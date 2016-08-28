require 'pty'
require 'expect'
require 'open-uri'
require '/root/script/autoconfig/module/junos/junos_applyconfig_module'
require '/root/script/autoconfig/module/junos/junos_verifyconfig_module'


class JUNOS
  include Junosapplyconfig
  include Junosverifyconfig

  def initialize(device)
    @device = device
  end
 
end



