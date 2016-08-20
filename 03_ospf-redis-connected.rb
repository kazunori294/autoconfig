require './module/ios'

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



ios7.applyconfig("

int lo1
ip address 192.167.1.7 255.255.255.0
int lo2
ip address 192.167.2.7 255.255.255.0
int lo3
ip address 192.167.3.7 255.255.255.0

route-map Loopback-to-OSPF permit 10
match interface Loopback1 Loopback2 Loopback3

router ospf 1
redistribute connected route-map Loopback-to-OSPF
summary-address 192.167.0.0 255.255.0.0

")

