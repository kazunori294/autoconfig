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


ios1.verifyconfig("
 show ip bgp
")


ios1.applyconfig("
 router bgp 100
  neighbor 10.0.14.4 weight 200
")


ios1.verifyconfig("
 clear bgp * all 100 soft
")


sleep(10)

ios1.verifyconfig("
show ip bgp
")


ios1.applyconfig("
 router bgp 100
  no neighbor 10.0.14.4 weight 200
")

ios1.verifyconfig("
 clear bgp * all 100 soft
")


sleep(10)


ios1.verifyconfig("
show ip bgp
")


#####################################

ios1.applyconfig("
ip access-list standard ACL_192-102-1-0_24
 permit 192.102.1.0 0.0.0.255 log
!
route-map RM-SET-WEIGHT permit 10
 match ip address ACL_192-102-1-0_24
 set weight 200
!
router bgp 100
neighbor 10.0.14.4 route-map RM-SET-WEIGHT in
")

ios1.verifyconfig("
 clear bgp * all 100 soft
")


sleep(10)


ios1.verifyconfig("
show ip bgp
")

######################################

ios1.applyconfig("
router bgp 100
no neighbor 10.0.14.4 route-map RM-SET-WEIGHT in
")

ios1.verifyconfig("
 clear bgp * all 100 soft
")
