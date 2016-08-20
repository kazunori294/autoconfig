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
 
* 03_ospf-redis-connected.rb
 * Redistribute R7's loopback address to OSPF

* 04_ospf-tshift-R3.rb
 * Traffic shift on R3

* 05_ospf-demand-circuit-and-flood-reduction.rb
 * Configure demand circuit on R7
 * Configure flood reduction on R6

* 06_ospf-sha-auth.rb
 * Configure SHA authentication between R5 and R7 (chain OSPF, key OSPFKEY)
 

