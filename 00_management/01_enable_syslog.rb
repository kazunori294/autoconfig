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

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")

ios2.applyconfig("

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")

ios3.applyconfig("

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")

ios4.applyconfig("

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")

ios5.applyconfig("

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")

ios6.applyconfig("

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")

ios7.applyconfig("

service timestamps debug datetime msec localtime show-timezone
service timestamps log datetime msec localtime show-timezone
service sequence-numbers
ip route 192.168.1.0 255.255.255.0 10.1.0.1
clock timezone JST 9
ntp server 192.168.1.6
logging buffered 512000
logging host 192.168.1.6
logging facility local0

")
