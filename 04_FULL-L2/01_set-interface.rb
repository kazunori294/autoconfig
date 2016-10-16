require '/root/script/autoconfig/module/ios'

device1 = "10.1.240.1"
device2 = "10.1.240.2"
device3 = "10.1.240.3"
device4 = "10.1.240.4"
device5 = "10.1.240.5"
device6 = "10.1.240.6"
device7 = "10.1.240.7"
device8 = "10.1.240.8"
device9 = "10.1.240.9"
device10 = "10.1.240.10"
device11 = "10.1.240.11"
device12 = "10.1.240.12"
device13 = "10.1.240.13"
device14 = "10.1.240.14"
device15 = "10.1.240.15"
device16 = "10.1.240.16"
device17 = "10.1.240.17"
device18 = "10.1.240.18"
device19 = "10.1.240.19"
device20 = "10.1.240.20"


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
ios8 = IOS.new(device8)
ios9 = IOS.new(device9)
ios10 = IOS.new(device10)
ios11 = IOS.new(device11)
ios12 = IOS.new(device12)
ios13 = IOS.new(device13)
ios14 = IOS.new(device14)
ios15 = IOS.new(device15)
ios16 = IOS.new(device16)
ios17 = IOS.new(device17)
ios18 = IOS.new(device18)
ios19 = IOS.new(device19)
ios20 = IOS.new(device20)


ios1.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.1 255.255.255.255
 ipv6 address 2001:10:255:255::1/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.12
 encapsulation dot1Q 12
 ip address 10.255.0.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.14
 encapsulation dot1Q 14
 ip address 10.255.1.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.15
 encapsulation dot1Q 15
 ip address 10.255.3.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.17
 encapsulation dot1Q 17
 vrf forwarding SITE_A
 ip address 172.31.17.1 255.255.255.0
 ipv6 address 2001:172:31:17::1/64
!

")



ios2.applyconfig("
int Gi1
no shut

interface Loopback0
 ip address 10.255.255.2 255.255.255.255
 ipv6 address 2001:10:255:255::2/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.12
 encapsulation dot1Q 12
 ip address 10.255.0.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.20
 encapsulation dot1Q 20
 ip address 169.254.20.0 255.255.255.254
 ipv6 address 2001:169:254:20::/127
!
interface GigabitEthernet1.23
 encapsulation dot1Q 23
 ip address 10.255.7.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.24
 encapsulation dot1Q 24
 ip address 10.255.4.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.25
 encapsulation dot1Q 25
 ip address 10.255.5.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.26
 encapsulation dot1Q 26
 ip address 10.255.8.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.28
 encapsulation dot1Q 28
 vrf forwarding SITE_A
 ip address 172.31.28.2 255.255.255.0
 ipv6 address 2001:172:31:28::2/64
!

")

ios3.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.3 255.255.255.255
 ipv6 address 2001:10:255:255::3/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.23
 encapsulation dot1Q 23
 ip address 10.255.7.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.30
 encapsulation dot1Q 30
 ip address 169.254.30.0 255.255.255.254
 ipv6 address 2001:169:254:30::/127
!
interface GigabitEthernet1.35
 encapsulation dot1Q 35
 ip address 10.255.9.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.36
 encapsulation dot1Q 36
 ip address 10.255.11.1 255.255.255.252
 ipv6 enable
!

")

ios4.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.4 255.255.255.255
 ipv6 address 2001:10:255:255::4/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.14
 encapsulation dot1Q 14
 ip address 10.255.1.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.24
 encapsulation dot1Q 24
 ip address 10.255.4.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.45
 encapsulation dot1Q 45
 ip address 10.255.6.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.49
 encapsulation dot1Q 49
 vrf forwarding SITE_B
 ip address 172.30.49.4 255.255.255.0
 ipv6 address 2001:172:30:49::4/64
!

")

ios5.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.5 255.255.255.255
 ipv6 address 2001:10:255:255::5/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.15
 encapsulation dot1Q 15
 ip address 10.255.3.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.25
 encapsulation dot1Q 25
 ip address 10.255.5.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.35
 encapsulation dot1Q 35
 ip address 10.255.9.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.45
 encapsulation dot1Q 45
 ip address 10.255.6.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.56
 encapsulation dot1Q 56
 ip address 10.255.10.1 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.135
 encapsulation dot1Q 135
 vrf forwarding SITE_C
 ip address 172.29.135.5 255.255.255.0
 ipv6 address 2001:172:29:135::5/64
!
interface GigabitEthernet1.145
 encapsulation dot1Q 145
 vrf forwarding SITE_C
 ip address 172.29.145.5 255.255.255.0
 ipv6 address 2001:172:29:145::5/64
!

")

ios6.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.6 255.255.255.255
 ipv6 address 2001:10:255:255::6/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.26
 encapsulation dot1Q 26
 ip address 10.255.8.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.36
 encapsulation dot1Q 36
 ip address 10.255.11.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.56
 encapsulation dot1Q 56
 ip address 10.255.10.2 255.255.255.252
 ipv6 enable
!
interface GigabitEthernet1.60
 encapsulation dot1Q 60
 ip address 169.254.60.0 255.255.255.254
 ipv6 address 2001:169:254:60::/127
!

")

ios7.applyconfig("
int Gi1
no shut

interface Loopback0
 ip address 10.255.255.7 255.255.255.255
 ipv6 address 2001:10:255:255::7/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.17
 encapsulation dot1Q 17
 ip address 172.31.17.7 255.255.255.0
 ipv6 address 2001:172:31:17::7/64
!
interface GigabitEthernet1.78
 encapsulation dot1Q 78
 ip address 172.31.78.7 255.255.255.0
 ipv6 address 2001:172:31:78::7/64
!
interface GigabitEthernet1.227
 encapsulation dot1Q 227
 ip address 172.31.227.7 255.255.255.0
!

")

ios8.applyconfig("
int Gi1
no shut

interface Loopback0
 ip address 10.255.255.8 255.255.255.255
 ipv6 address 2001:10:255:255::8/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.28
 encapsulation dot1Q 28
 ip address 172.31.28.8 255.255.255.0
 ipv6 address 2001:172:31:28::8/64
!
interface GigabitEthernet1.78
 encapsulation dot1Q 78
 ip address 172.31.78.8 255.255.255.0
 ipv6 address 2001:172:31:78::8/64
!
interface GigabitEthernet1.228
 encapsulation dot1Q 228
 ip address 172.31.228.8 255.255.255.0
!

")

ios9.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.9 255.255.255.255
 ipv6 address 2001:10:255:255::9/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.49
 encapsulation dot1Q 49
 ip address 172.30.49.9 255.255.255.0
 ipv6 address 2001:172:30:49::9/64
!
interface GigabitEthernet1.109
 encapsulation dot1Q 109
 ip address 172.30.109.9 255.255.255.0
 ipv6 address 2001:172:30:109::9/64
!

")

ios10.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.10 255.255.255.255
 ipv6 address 2001:10:255:255::10/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.102
 encapsulation dot1Q 102
 ip address 172.30.102.10 255.255.255.0
 ipv6 address 2001:172:30:102::10/64
!
interface GigabitEthernet1.109
 encapsulation dot1Q 109
 ip address 172.30.109.10 255.255.255.0
 ipv6 address 2001:172:30:109::10/64
!

")
