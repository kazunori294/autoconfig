# OSPF Lab
https://s3.amazonaws.com/kazutan-autoconfig/ospf-lab.jpg
* 01_ospf-lab-set-interface.rb
 * Configure Interface

* 02_ospf-lab-set-ospf.rb
 * Enable OSPF on each interface : use network command,  max path 32
   * Check OSPF LAB image for loopback ospf configuration
   * Configure MD5 Authentication(key:cisco)  between R1-R2  R1-R3  R1-R4  R1-R5
   * area 1 is summarized as 192.168.0.0/16

* 03_ospf-redis-connected.rb
 * Redistribute R7's loopback address to OSPF

* 04_ospf-tshift-R3.rb
 * Traffic shift on R3

* 05_ospf-demand-circuit-and-flood-reduction.rb
 * Configure demand circuit on R7
 * Configure flood reduction on R6

* 07_ospf-basic-default-route.rb
 * Generate default route injection into OSPF on R1
 * Delete tthis configuration

* 08_ospf-advanced-default-route.rb
 * TBD

* 09_ospf-change-area1-to-stub.rb
 * Configure Area 1 as Stub Area
 * Configure Area 1 as Totally Stub Area

* 10_ospf-change-area2-to-nssa.rb
 * Configure Area 2 as NSSA
 * Configure Area 2 as Totally NSSA

# BGP LAB

* 01_bgp-lab-set-interface.rb
 * Configure Interface

* 02_bgp-lab-set-eBGP-iBGP.rb
 * Configure simple eBGP iBGP(not using loopback for BGP connection)

* 04_bgp-lab-set-route_reflector.rb
 * COnfigure Router Reflectror

* 05_bgp-lab-set-peer-group.rb
 * Configure peer group on R1 for R2,R3,R4

* 06_bgp-lab-set-weight.rb
 * Change R4 weight as 200 on R1 - simple way
  * Remove this configuration once it's confirmed
 * set weight as 200 only for 192.102.1.0/24 on R1
  * Remove this configuration once it's confirmed

* 07_bgp-lab-set-LP.rb
 * Set local preference as 200 to R3 on R5 - use route-map

* 08_bgp-lab-set-AS-prepend.rb
 * R7: add AS200 201 202 203 to R2, only for 100.0.0.0/24
