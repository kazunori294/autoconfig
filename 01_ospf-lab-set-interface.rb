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

service password-encryption 
int gi1
no shut
!
int gi1.12
encapsulation dot1Q 12
ip address 10.0.12.1 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.13
encapsulation dot1Q 13
ip address 10.0.13.1 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.14
encapsulation dot1Q 14
ip address 10.0.14.1 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.15
encapsulation dot1Q 15
ip address 10.0.15.1 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int lo0
ip address 8.8.8.1 255.255.255.255

")

ios2.applyconfig("

service password-encryption 
int gi1
no shut
!
int gi1.12
encapsulation dot1Q 12
ip address 10.0.12.2 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.26
encapsulation dot1Q 26
ip address 10.0.26.2 255.255.255.0
no shut
!
int lo0
ip address 8.8.8.2 255.255.255.255

")


ios3.applyconfig("

service password-encryption 
int gi1
no shut
!
int gi1.13
encapsulation dot1Q 13
ip address 10.0.13.3 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.36
encapsulation dot1Q 36
ip address 10.0.36.3 255.255.255.0
no shut
!
int lo0
ip address 8.8.8.3 255.255.255.255

")



ios4.applyconfig("

service password-encryption 
int gi1
no shut
!
int gi1.14
encapsulation dot1Q 14
ip address 10.0.14.4 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.47
encapsulation dot1Q 47
ip address 10.0.47.4 255.255.255.0
no shut
!
int lo0
ip address 8.8.8.4 255.255.255.255

")


ios5.applyconfig("

service password-encryption 
int gi1
no shut
!
int gi1.15
encapsulation dot1Q 15
ip address 10.0.15.5 255.255.255.0
no shut
ip ospf authentication message-digest
ip ospf message-digest-key 1 md5 cisco
!
int gi1.57
encapsulation dot1Q 57
ip address 10.0.57.5 255.255.255.0
no shut
!
int lo0
ip address 8.8.8.5 255.255.255.255

")


ios6.applyconfig("

service password-encryption 
int gi1
no shut
!
int gi1.26
encapsulation dot1Q 26
ip address 10.0.26.6 255.255.255.0
no shut
!
int gi1.36
encapsulation dot1Q 36
ip address 10.0.36.6 255.255.255.0
no shut
!
int lo0
ip address 8.8.8.6 255.255.255.255

")


ios7.applyconfig("

service password-encryption 
int gi1
no shut
!
int gi1.47
encapsulation dot1Q 47
ip address 10.0.47.7 255.255.255.0
no shut
!
int gi1.57
encapsulation dot1Q 57
ip address 10.0.57.7 255.255.255.0
no shut
!
int lo0
ip address 8.8.8.7 255.255.255.255

")


#ios3.applyconfig("
#  default interface gi3
#  default interface gi4
#  default interface gi5 
#")

ios1.verifyconfig("
  show ip int b
")

ios2.verifyconfig("
  show ip int b
")

ios3.verifyconfig("
  show ip int b
")

ios4.verifyconfig("
  show ip int b
")

ios5.verifyconfig("
  show ip int b
")

ios6.verifyconfig("
  show ip int b
")

ios7.verifyconfig("
  show ip int b
")
