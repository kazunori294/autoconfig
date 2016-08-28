require '/root/script/autoconfig/module/junos'
require '/root/script/autoconfig/module/ios'

device1 = "192.168.12.1"


$user = "automation"
$userpass = "AutoMation"

junos1 = JUNOS.new(device1)


junos1.junosverifyconfig("
 show version
")

junos1.junosapplyconfig("
 show
")


