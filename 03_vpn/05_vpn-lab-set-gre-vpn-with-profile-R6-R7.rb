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
 encr 3des
 hash md5
 authentication pre-share
 group 5
!
crypto isakmp key CISCO address 10.0.27.7
!
crypto ipsec transform-set ESP-AES-128-SHA-1 esp-aes esp-sha-hmac 
 mode transport
!
crypto ipsec profile GRE_OVER_IPSEC_PROFILE
 set transform-set ESP-AES-128-SHA-1 
!
!
interface Tunnel1
 ip address 169.254.79.6 255.255.255.0
 ip mtu 1400
 ip tcp adjust-mss 1360
 ip ospf 1 area 0
 tunnel source GigabitEthernet1.46
 tunnel destination 10.0.27.7
 tunnel protection ipsec profile GRE_OVER_IPSEC_PROFILE
!
")

ios7.applyconfig("
!
crypto isakmp policy 10
 encr 3des
 hash md5
 authentication pre-share
 group 5
!
crypto isakmp key CISCO address 10.0.46.6
!
crypto ipsec transform-set ESP-AES-128-SHA-1 esp-aes esp-sha-hmac
 mode transport
!
crypto ipsec profile GRE_OVER_IPSEC_PROFILE
 set transform-set ESP-AES-128-SHA-1
!
!
interface Tunnel1
 ip address 169.254.79.7 255.255.255.0
 ip mtu 1400
 ip tcp adjust-mss 1360
 ip ospf 1 area 0
 tunnel source GigabitEthernet1.27
 tunnel destination 10.0.46.6
 tunnel protection ipsec profile GRE_OVER_IPSEC_PROFILE
!
")
