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



ios15.applyconfig("
int Gi1
no shut

vrf definition ISPA
 rd 10000:10000
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
vrf definition SERVER1
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
vrf definition SERVER2
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
vrf definition SERVER3
 !
 address-family ipv4
 exit-address-family
 !
 address-family ipv6
 exit-address-family
!
!
interface Loopback0
 ip address 10.255.255.15 255.255.255.255
 ipv6 address 2001:10:255:255::15/128
!
interface Loopback10001
 vrf forwarding ISPA
 ip address 175.77.76.238 255.254.0.0
 ipv6 address 2001:3573:1683:D027:16AA:F4EC:3E20:AE46/54
!
interface Loopback10002
 vrf forwarding ISPA
 ip address 106.195.178.20 255.255.0.0
 ipv6 address 2001:55A3:4CA2:1A66:51D:7F39:D7DB:F8D7/39
 ipv6 address 2001:DE23:4AD5:1501:C6E9:65C0:55D4:EC82/61
!
interface Loopback10003
 vrf forwarding ISPA
 ip address 22.100.124.112 252.0.0.0
 ipv6 address 2001:E4F3:888D:2DD6:3927:266D:9E06:D678/60
!
interface Loopback10004
 vrf forwarding ISPA
 ip address 8.96.30.168 255.255.255.0
 ipv6 address 2001:F4A5:882:5700:204:377C:A3D4:2ADD/21
!
interface Loopback10005
 vrf forwarding ISPA
 ip address 12.248.9.125 255.224.0.0
 ipv6 address 2001:BA6:9AE6:DAE2:A597:A074:8CEC:2BBD/43
!
interface Loopback10006
 vrf forwarding ISPA
 ip address 54.136.30.26 254.0.0.0
 ipv6 address 2001:BFCC:7696:C0AF:9032:F715:1F8E:8D00/30
!
interface Loopback10007
 vrf forwarding ISPA
 ip address 198.146.53.166 255.255.255.252
 ipv6 address 2001:4613:9EE0:EB93:7B96:13A5:B550:1A7A/24
 ipv6 address 2001:4932:705A:6748:D2A8:88AD:6BAF:E158/57
!
interface Loopback10008
 vrf forwarding ISPA
 ip address 114.250.203.239 255.224.0.0
 ipv6 address 2001:2859:E086:119D:2AA3:1DAC:8F9:EEFF/27
 ipv6 address 2001:8FDC:1EA6:935:5995:540B:D4F8:580F/37
!
interface Loopback10009
 vrf forwarding ISPA
 ip address 221.110.216.190 255.255.240.0
 ipv6 address 2001:AC94:8AEC:B914:35F2:BD8A:328E:1EDB/48
!
interface Loopback10010
 vrf forwarding ISPA
 ip address 184.237.53.239 254.0.0.0
 ipv6 address 2001:9315:8312:49C3:D39B:43D:840:8D8F/59
!
interface Loopback10011
 vrf forwarding ISPA
 ip address 177.130.59.93 255.254.0.0
 ipv6 address 2001:707D:65EB:70C5:DCEB:62B7:1400:101F/29
!
interface Loopback10012
 vrf forwarding ISPA
 ip address 120.77.145.209 255.255.224.0
 ipv6 address 2001:A483:EBBB:D135:629E:99EB:7798:BD3B/59
!
interface Loopback10013
 vrf forwarding ISPA
 ip address 145.187.40.53 255.255.255.254
 ipv6 address 2001:E40:62EF:7F63:70D4:A904:8C1F:7245/26
!
interface Loopback10014
 vrf forwarding ISPA
 ip address 68.252.70.70 255.255.254.0
 ipv6 address 2001:933A:191E:F40C:BD19:4132:6279:E34/32
 ipv6 address 2001:CFA9:E549:A7B7:27D9:672:1A02:4F99/63
!
interface Loopback10015
 vrf forwarding ISPA
 ip address 220.223.254.53 255.255.255.128
 ipv6 address 2001:34C3:F570:412C:A71C:73F4:B7DA:A36D/50
 ipv6 address 2001:A0B8:E2E6:DE85:6FC2:6D1F:54FB:3200/45
!
interface Loopback10016
 vrf forwarding ISPA
 ip address 170.185.23.42 255.255.0.0
 ipv6 address 2001:D852:5889:9903:F92A:D498:D696:9B08/39
!
interface Loopback10017
 vrf forwarding ISPA
 ip address 135.101.55.178 255.252.0.0
 ipv6 address 2001:9E7E:B1CC:17DF:2E7E:47A5:CAD5:F0D9/55
!
interface Loopback10018
 vrf forwarding ISPA
 ip address 123.246.70.48 255.255.128.0
 ipv6 address 2001:2541:BE30:AD11:8365:BEF9:5F98:1BB5/59
!
interface Loopback10019
 vrf forwarding ISPA
 ip address 71.24.132.137 255.255.255.252
 ipv6 address 2001:4DF4:A03:36E6:2752:6943:CBC4:2F12/23
!
interface Loopback10020
 vrf forwarding ISPA
 ip address 204.134.58.180 255.224.0.0
 ipv6 address 2001:3CD6:2FC0:F287:32AC:BE73:D21D:F14/50
 ipv6 address 2001:A6A2:17F3:452F:3A9D:1567:BCC:5A45/39
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.20
 encapsulation dot1Q 20
 vrf forwarding ISPA
 ip address 169.254.20.1 255.255.255.254
 ipv6 address 2001:169:254:20::1/127
!
interface GigabitEthernet1.30
 encapsulation dot1Q 30
 vrf forwarding ISPA
 ip address 169.254.30.1 255.255.255.254
 ipv6 address 2001:169:254:30::1/127
!
interface GigabitEthernet1.100
 encapsulation dot1Q 100
 ip address 172.29.100.15 255.255.255.0
 ipv6 address 2001:172:29:100::15/64
!
interface GigabitEthernet1.160
 encapsulation dot1Q 160
 vrf forwarding ISPA
 ip address 169.254.160.1 255.255.255.254
 ipv6 address 2001:169:254:160::1/127
!
interface GigabitEthernet1.170
 encapsulation dot1Q 170
 vrf forwarding ISPA
 ip address 169.254.170.1 255.255.255.254
 ipv6 address 2001:169:254:170::1/127
!
interface GigabitEthernet1.180
 encapsulation dot1Q 180
 vrf forwarding ISPA
 ip address 169.254.180.1 255.255.255.254
 ipv6 address 2001:169:254:180::1/127
!
interface GigabitEthernet1.182
 encapsulation dot1Q 182
 vrf forwarding SERVER1
 ip address 183.18.100.100 255.255.255.0
 ipv6 address 2001:183:18:100::100/64
!
interface GigabitEthernet1.191
 encapsulation dot1Q 191
 vrf forwarding SERVER2
 ip address 183.19.100.100 255.255.255.0
 ipv6 address 2001:183:19:100::100/64
!
interface GigabitEthernet1.201
 encapsulation dot1Q 201
 vrf forwarding SERVER3
 ip address 183.20.100.100 255.255.255.0
 ipv6 address 2001:183:20:100::100/64
!
")


ios16.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.16 255.255.255.255
 ipv6 address 2001:10:255:255::16/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.160
 encapsulation dot1Q 160
 ip address 169.254.160.0 255.255.255.254
 ipv6 address 2001:169:254:160::/127
!
interface GigabitEthernet1.1623
 encapsulation dot1Q 1623
 ip address 183.16.23.16 255.255.255.0
!
")


ios17.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.17 255.255.255.255
 ipv6 address 2001:10:255:255::17/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.170
 encapsulation dot1Q 170
 ip address 169.254.170.0 255.255.255.254
 ipv6 address 2001:169:254:170::/127
!
interface GigabitEthernet1.1723
 encapsulation dot1Q 1723
 ip address 183.17.23.17 255.255.255.0
!
")


ios18.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.18 255.255.255.255
 ipv6 address 2001:10:255:255::18/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.180
 encapsulation dot1Q 180
 ip address 169.254.180.0 255.255.255.254
 ipv6 address 2001:169:254:180::/127
!
interface GigabitEthernet1.181
 encapsulation dot1Q 181
 ip address 169.254.181.0 255.255.255.254
 ipv6 address 2001:169:254:181::/127
!
interface GigabitEthernet1.182
 encapsulation dot1Q 182
 ip address 183.18.100.18 255.255.255.0
 ipv6 address 2001:183:18:100::18/64
!
")


ios19.applyconfig("
int Gi1
no shut

interface Loopback0
 ip address 10.255.255.19 255.255.255.255
 ipv6 address 2001:10:255:255::19/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.190
 encapsulation dot1Q 190
 ip address 169.254.190.0 255.255.255.254
 ipv6 address 2001:169:254:190::/127
!
interface GigabitEthernet1.191
 encapsulation dot1Q 191
 ip address 183.19.100.19 255.255.255.0
 ipv6 address 2001:183:19:100::19/64
!
")


ios20.applyconfig("
int Gi1
no shut

!
interface Loopback0
 ip address 10.255.255.20 255.255.255.255
 ipv6 address 2001:10:255:255::20/128
!
interface GigabitEthernet1
 no ip address
 negotiation auto
!
interface GigabitEthernet1.200
 encapsulation dot1Q 200
 ip address 169.254.200.0 255.255.255.254
 ipv6 address 2001:169:254:200::/127
!
interface GigabitEthernet1.201
 encapsulation dot1Q 201
 ip address 183.20.100.20 255.255.255.0
 ipv6 address 2001:183:20:100::20/64
!
")
