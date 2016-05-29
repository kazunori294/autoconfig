module Enablessh

 def enablessh

  cmd = "telnet " + @device

  PTY.spawn(cmd) do |r_f,w_f,pid|

   w_f.sync = true
   $expect_verbose = true

   r_f.expect(/Username:/ ,timeout = 10) do
     w_f.puts $user
   end

   r_f.expect(/Password:/ ,timeout = 10) do
     w_f.puts $userpass
   end

   r_f.expect(/>/ ,timeout = 10) do |output|
     for x in output[0].split("\n")
       if x.include?(">") then
         hostname = x.split(">")[0]
       end
     end
     w_f.puts "enable"
   end

   r_f.expect(/Password:/ ,timeout = 10) do
     w_f.puts $enablepass
   end

   r_f.expect(/#/ ,timeout = 10) do
     w_f.puts "terminal length 0"
   end

   r_f.expect(/#/ ,timeout = 10) do
     w_f.puts "conf t"
   end

   r_f.expect(/#/ ,timeout = 10) do
     w_f.puts "crypto key generate rsa"
   end

   r_f.expect(/(bits|them)/) do |ssh|
     case ssh[1]
     when "bits" then
       w_f.puts "1024"
     when "them" then
       w_f.puts "no"
     end
   end

   r_f.expect(/#/ ,timeout = 10) do
     w_f.puts 
   end

   puts ""
  end
 end
end
