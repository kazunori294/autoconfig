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


ios6.applyconfig("
!
crypto isakmp policy 10
 encr aes 128
 hash sha256
 authentication pre-share
 group 16
!
crypto isakmp key DMVPN_PSK address 10.0.27.7
!
crypto ipsec transform-set ESP-AES-256-SHA-512 esp-aes 256 esp-sha512-hmac 
 mode transport
!
crypto ipsec profile DMVPN_PROFILE
 set transform-set ESP-AES-256-SHA-512
!
interface Tunnel0
 ip address 155.1.0.6 255.255.255.0
 ip mtu 1400
 ip nhrp authentication NHRPAUTH
 ip nhrp map 155.1.0.7 10.0.27.7
 ip nhrp map multicast 10.0.27.7
 ip nhrp network-id 1 
 ip nhrp nhs 155.1.0.7
 ip tcp adjust-mss 1360
 tunnel source GigabitEthernet1.46
 tunnel destination 10.0.27.7
 tunnel key 2
 tunnel protection ipsec profile DMVPN_PROFILE
 no shutdown
 ip ospf 1 area 0
!
int lo0
 ip ospf 1 area 0
!
")
