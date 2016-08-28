module Junosverifyconfig

 def junosverifyconfig(config)

   cmd = "ssh -oStrictHostKeyChecking=no -l automation " + @device

   PTY.spawn(cmd) do |r_f,w_f,pid|

     w_f.sync = true
     $expect_verbose = true

     r_f.expect(/password:/ ,timeout = 10) do
       w_f.puts $userpass
     end

     r_f.expect(/>/ ,timeout = 10) do
       w_f.puts "set cli screen-length 0"
     end


     config.each_line do |line|
       r_f.expect(/>/ ,timeout = 10) do
         w_f.puts line
         sleep(1)
       end
     end

     r_f.expect(/>/ ,timeout = 10) do
        w_f.puts
     end
   end
   puts ""
 end

end
