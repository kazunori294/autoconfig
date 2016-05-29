module Verifyconfig

 def verifyconfig(config)

   cmd = "ssh -oStrictHostKeyChecking=no  -l cisco " + @device

   PTY.spawn(cmd) do |r_f,w_f,pid|

     w_f.sync = true
     $expect_verbose = true

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

     config.each_line do |line|
       r_f.expect(/#/ ,timeout = 10) do
         w_f.puts line
         sleep(1)
       end
     end

     r_f.expect(/#/ ,timeout = 10) do
        w_f.puts
     end
   end
   puts ""
 end

end
