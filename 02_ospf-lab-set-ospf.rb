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


ios1.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.12.0 0.0.0.255 area 0
network 10.0.13.0 0.0.0.255 area 0
network 10.0.14.0 0.0.0.255 area 0
network 10.0.15.0 0.0.0.255 area 0 

")

ios2.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.26.0 0.0.0.255 area 1
network 10.0.12.0 0.0.0.255 area 0
area 1 range 192.168.0.0 255.255.0.0


")


ios3.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.36.0 0.0.0.255 area 1
network 10.0.13.0 0.0.0.255 area 0
area 1 range 192.168.0.0 255.255.0.0

")



ios4.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.14.0 0.0.0.255 area 0
network 10.0.47.0 0.0.0.255 area 2


")


ios5.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.15.0 0.0.0.255 area 0
network 10.0.57.0 0.0.0.255 area 2

")


ios6.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.26.0 0.0.0.255 area 1
network 10.0.36.0 0.0.0.255 area 1

int lo1
ip address 192.168.1.6 255.255.255.0
ip ospf 1 area 1
!
int lo2
ip address 192.168.2.6 255.255.255.0
ip ospf 1 area 1
!
int lo3
ip address 192.168.3.6 255.255.255.0
ip ospf 1 area 1
!
int lo4
ip address 192.168.4.6 255.255.255.0
ip ospf 1 area 1
!

")


ios7.applyconfig("

router ospf 1
maximum-paths 32
network 10.0.57.0 0.0.0.255 area 2
network 10.0.47.0 0.0.0.255 area 2

")


sleep(40)

ios1.verifyconfig("
  show ip ospf nei
")

ios2.verifyconfig("
  show ip ospf nei
")

ios3.verifyconfig("
  show ip ospf nei
")

ios4.verifyconfig("
  show ip ospf nei
")

ios5.verifyconfig("
  show ip ospf nei
")

ios6.verifyconfig("
  show ip ospf nei
")

ios7.verifyconfig("
  show ip ospf nei
")
