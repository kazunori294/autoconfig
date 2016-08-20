# OSPF Lab
https://s3.amazonaws.com/kazutan-autoconfig/ospf-lab.jpg
* 01_ospf-lab-set-interface.rb
 * Configure Interface
 * Configure MD5 Authentication(key:cisco)  between R1-R2  R1-R3  R1-R4  R1-R5

* 02_ospf-lab-set-ospf.rb
 * Enable OSPF on each interface : use network command,  max path 32
   * Check lab image for loopback ospf configuration
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




