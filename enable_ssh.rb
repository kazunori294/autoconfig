require_relative './module/ios'


device1 = ARGV[0]

$user = "cisco"
$userpass = "cisco"
$enablepass = "cisco"

ios1 = IOS.new(device1)

ios1.enablessh
