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


ios1.applyconfig("

int lo1
ip address 192.100.1.1 255.255.255.0
!
int lo2
ip address 192.100.2.1 255.255.255.0
!
int lo3
ip address 192.100.3.1 255.255.255.0
!
router bgp 100
network 192.100.1.0 mask 255.255.255.0
network 192.100.2.0 mask 255.255.255.0
network 192.100.3.0 mask 255.255.255.0

")


ios5.applyconfig("
int lo1
ip address 192.102.1.5 255.255.255.0
!
int lo2
ip address 192.102.2.5 255.255.255.0
!
int lo3
ip address 192.102.3.5 255.255.255.0
!
router bgp 102
network 192.102.1.0 mask 255.255.255.0
network 192.102.2.0 mask 255.255.255.0
network 192.102.3.0 mask 255.255.255.0
")


ios6.applyconfig("
router bgp 102
network 192.102.1.0 mask 255.255.255.0
network 192.102.2.0 mask 255.255.255.0
network 192.102.3.0 mask 255.255.255.0
")


ios7.applyconfig("
int lo1
ip address 192.101.1.7 255.255.255.0
!
int lo2
ip address 192.101.2.7 255.255.255.0
!
int lo3
ip address 192.101.3.7 255.255.255.0
!
router bgp 101
network 192.101.1.0 mask 255.255.255.0
network 192.101.2.0 mask 255.255.255.0
network 192.101.3.0 mask 255.255.255.0
")





ios1.applyconfig("
int lo1
ip ospf 1 area 0
int lo2
ip ospf 1 area 0
int lo3 
ip ospf 1 area 0
int gi1.12
ip ospf 1 area 0
int gi1.13
ip ospf 1 area 0
int gi1.14
ip ospf 1 area 0
")


ios2.applyconfig("
int gi1.12
ip ospf 1 area 0
")


ios3.applyconfig("
int gi1.13
ip ospf 1 area 0
")


ios4.applyconfig("
int gi1.14
ip ospf 1 area 0
")


ios5.applyconfig("
int lo1
ip ospf 1 area 0
int lo2
ip ospf 1 area 0
int lo3
ip ospf 1 area 0
int gi1.56
ip ospf 1 area 0
")

ios6.applyconfig("
int gi1.56
ip ospf 1 area 0
")
