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





ios7.verifyconfig("
  show ip ospf neighbor
  show ip ospf database router self-originate
")


ios7.applyconfig("

int gi1.47
ip ospf demand-circuit
int gi1.57
ip ospf demand-circuit

")


sleep (10)


ios7.verifyconfig("
  show ip ospf neighbor
  show ip ospf database router self-originate
")





ios6.verifyconfig("
  show ip ospf database
")


ios6.applyconfig("

int gi1.36
ip ospf flood-reduction
int gi1.26
ip ospf flood-reduction

")


ios2.applyconfig("

int gi1.26
ip ospf flood-reduction

")


ios3.applyconfig("

int gi1.36
ip ospf flood-reduction

")


sleep (10)

ios6.verifyconfig("
  show ip ospf database
")
