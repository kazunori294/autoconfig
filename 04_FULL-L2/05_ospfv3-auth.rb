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

devices = []
devices.push(ios1)
devices.push(ios2)
devices.push(ios3)
devices.push(ios4)
devices.push(ios5)
devices.push(ios6)



devices.each do |device|

  device.applyconfig("

key chain OSPF_KEYS
 key 1
   key-string CISCO
   cryptographic-algorithm hmac-sha-512
!
router ospfv3 1
 address-family ipv4 unicast
  area 0 authentication key-chain OSPF_KEYS
 exit-address-family
 !
 address-family ipv6 unicast
  area 0 authentication key-chain OSPF_KEYS
 exit-address-family

  ")

end


