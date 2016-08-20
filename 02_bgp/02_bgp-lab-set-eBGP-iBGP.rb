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

router bgp 100

neighbor 10.0.13.3 remote-as 100 
neighbor 10.0.14.4 remote-as 100
neighbor 10.0.12.2 remote-as 100
neighbor 10.0.13.3 next-hop-self
neighbor 10.0.14.4 next-hop-self
neighbor 10.0.12.2 next-hop-self

")

ios2.applyconfig("

router bgp 100

neighbor 10.0.12.1 remote-as 100
neighbor 10.0.27.7 remote-as 101
neighbor 10.0.12.1 next-hop-self

")


ios3.applyconfig("

router bgp 100
neighbor 10.0.13.1 remote-as 100
neighbor 10.0.35.5 remote-as 102
neighbor 10.0.13.1 next-hop-self

")



ios4.applyconfig("

router bgp 100
neighbor 10.0.14.1 remote-as 100
neighbor 10.0.46.6 remote-as 102
neighbor 10.0.14.1 next-hop-self

")


ios5.applyconfig("
router bgp 102
neighbor 10.0.35.3 remote-as 100
neighbor 10.0.56.6 remote-as 102
neighbor 10.0.56.6 next-hop-self

")


ios6.applyconfig("
router bgp 102
neighbor 10.0.56.5 remote-as 102
neighbor 10.0.46.4 remote-as 100
neighbor 10.0.56.5 next-hop-self

")


ios7.applyconfig("
router bgp 101
neighbor 10.0.27.2 remote-as 100

")


sleep(15)

ios1.verifyconfig("
  show ip bgp summary
")

ios2.verifyconfig("
  show ip bgp summary
")

ios3.verifyconfig("
  show ip bgp summary
")

ios4.verifyconfig("
  show ip bgp summary
")

ios5.verifyconfig("
  show ip bgp summary
")

ios6.verifyconfig("
  show ip bgp summary
")

ios7.verifyconfig("
  show ip bgp summary
")
