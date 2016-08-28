require '/root/script/autoconfig/module/ios'

device1 = "10.1.200.1"
device2 = "10.1.200.2"
device3 = "10.1.200.3"
device4 = "10.1.200.4"
device5 = "10.1.200.5"
device6 = "10.1.200.6"
device7 = "10.1.200.7"




$user = "cisco"
$userpass = "cisco"
$enablepass = "cisco"


ios1 = IOS.new(device1)
ios2 = IOS.new(device2)
ios3 = IOS.new(device3)
ios4 = IOS.new(device4)
ios5 = IOS.new(device5)
ios6 = IOS.new(device6)
ios7 = IOS.new(device7)



ios5.applyconfig("
ip route 0.0.0.0 0.0.0.0 10.0.35.3
")

ios6.applyconfig("
ip route 0.0.0.0 0.0.0.0 10.0.46.4
")

ios7.applyconfig("
ip route 0.0.0.0 0.0.0.0 10.0.27.2
")

ios1.verifyconfig("

")