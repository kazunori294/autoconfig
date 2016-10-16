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

router bgp 1.20000
 bgp asnotation dot
 bgp log-neighbor-changes
 no bgp default ipv4-unicast
 neighbor 10.255.255.4 remote-as 1.20000
 neighbor 10.255.255.4 update-source Loopback0
 neighbor 2001:10:255:255::4 remote-as 1.20000
 neighbor 2001:10:255:255::4 update-source Loopback0
 !
 address-family ipv4
 exit-address-family
 !
 address-family vpnv4
  neighbor 10.255.255.4 activate
  neighbor 10.255.255.4 send-community extended
 exit-address-family
 !
 address-family vpnv6
  neighbor 10.255.255.4 activate
  neighbor 10.255.255.4 send-community extended
 exit-address-family
!

")


ios2.applyconfig("
router bgp 1.20000
 bgp asnotation dot
 bgp log-neighbor-changes
 no bgp default ipv4-unicast
 neighbor 10.255.255.4 remote-as 1.20000
 neighbor 10.255.255.4 update-source Loopback0
 neighbor 2001:10:255:255::4 remote-as 1.20000
 neighbor 2001:10:255:255::4 update-source Loopback0
 neighbor 2001:169:254:20::1 remote-as 10000
 neighbor 169.254.20.1 remote-as 10000
 !
 address-family ipv4
  neighbor 10.255.255.4 activate
  neighbor 169.254.20.1 activate
 exit-address-family
 !
 address-family vpnv4
  neighbor 10.255.255.4 activate
  neighbor 10.255.255.4 send-community extended
 exit-address-family
 !
 address-family ipv6
  neighbor 2001:10:255:255::4 activate
  neighbor 2001:169:254:20::1 activate
 exit-address-family
 !
 address-family vpnv6
  neighbor 10.255.255.4 activate
  neighbor 10.255.255.4 send-community extended
 exit-address-family
!

")


ios3.applyconfig("

!
router bgp 1.20000
 bgp asnotation dot
 bgp log-neighbor-changes
 no bgp default ipv4-unicast
 neighbor 10.255.255.4 remote-as 1.20000
 neighbor 10.255.255.4 update-source Loopback0
 neighbor 2001:10:255:255::4 remote-as 1.20000
 neighbor 2001:10:255:255::4 update-source Loopback0
 neighbor 2001:169:254:30::1 remote-as 10000
 neighbor 169.254.30.1 remote-as 10000
 !
 address-family ipv4
  neighbor 10.255.255.4 activate
  neighbor 169.254.30.1 activate
 exit-address-family
 !
 address-family ipv6
  neighbor 2001:10:255:255::4 activate
  neighbor 2001:169:254:30::1 activate
 exit-address-family
!
")


ios4.applyconfig("

!
router bgp 1.20000
 bgp asnotation dot
 bgp log-neighbor-changes
 no bgp default ipv4-unicast
 neighbor 10.255.255.1 remote-as 1.20000
 neighbor 10.255.255.1 update-source Loopback0
 neighbor 10.255.255.2 remote-as 1.20000
 neighbor 10.255.255.2 update-source Loopback0
 neighbor 10.255.255.3 remote-as 1.20000
 neighbor 10.255.255.3 update-source Loopback0
 neighbor 10.255.255.5 remote-as 1.20000
 neighbor 10.255.255.5 update-source Loopback0
 neighbor 10.255.255.6 remote-as 1.20000
 neighbor 10.255.255.6 update-source Loopback0
 neighbor 2001:10:255:255::2 remote-as 1.20000
 neighbor 2001:10:255:255::2 update-source Loopback0
 neighbor 2001:10:255:255::3 remote-as 1.20000
 neighbor 2001:10:255:255::3 update-source Loopback0
 neighbor 2001:10:255:255::6 remote-as 1.20000
 neighbor 2001:10:255:255::6 update-source Loopback0
 !
 address-family ipv4
  neighbor 10.255.255.2 activate
  neighbor 10.255.255.3 activate
  neighbor 10.255.255.6 activate
 exit-address-family
 !
 address-family vpnv4
  neighbor 10.255.255.1 activate
  neighbor 10.255.255.1 send-community extended
  neighbor 10.255.255.2 activate
  neighbor 10.255.255.2 send-community extended
  neighbor 10.255.255.5 activate
  neighbor 10.255.255.5 send-community extended
 exit-address-family
 !
 address-family ipv6
  neighbor 2001:10:255:255::2 activate
  neighbor 2001:10:255:255::3 activate
  neighbor 2001:10:255:255::6 activate
 exit-address-family
 !
 address-family vpnv6
  neighbor 10.255.255.1 activate
  neighbor 10.255.255.1 send-community extended
  neighbor 10.255.255.2 activate
  neighbor 10.255.255.2 send-community extended
  neighbor 10.255.255.5 activate
  neighbor 10.255.255.5 send-community extended
 exit-address-family
!
")

ios5.applyconfig("

router bgp 1.20000
 bgp asnotation dot
 bgp log-neighbor-changes
 no bgp default ipv4-unicast
 neighbor 10.255.255.4 remote-as 1.20000
 neighbor 10.255.255.4 update-source Loopback0
 neighbor 2001:10:255:255::4 remote-as 1.20000
 neighbor 2001:10:255:255::4 update-source Loopback0
 !
 address-family ipv4
 exit-address-family
 !
 address-family vpnv4
  neighbor 10.255.255.4 activate
  neighbor 10.255.255.4 send-community extended
 exit-address-family
 !
 address-family vpnv6
  neighbor 10.255.255.4 activate
  neighbor 10.255.255.4 send-community extended
 exit-address-family
!
!
")


ios6.applyconfig("
!
router bgp 1.20000
 bgp asnotation dot
 bgp log-neighbor-changes
 no bgp default ipv4-unicast
 neighbor 10.255.255.4 remote-as 1.20000
 neighbor 10.255.255.4 update-source Loopback0
 neighbor 2001:10:255:255::4 remote-as 1.20000
 neighbor 2001:10:255:255::4 update-source Loopback0
 neighbor 2001:169:254:60::1 remote-as 30000
 neighbor 169.254.60.1 remote-as 30000
 !
 address-family ipv4
  neighbor 10.255.255.4 activate
  neighbor 169.254.60.1 activate
 exit-address-family
 !
 address-family ipv6
  neighbor 2001:10:255:255::4 activate
  neighbor 2001:169:254:60::1 activate
 exit-address-family
!

")
