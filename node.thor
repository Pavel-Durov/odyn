
require 'thor'

require_relative './node/node.rb'

# run form cli example: 
#    thor node:port 9999

class Node < Thor
    desc "blockchain node args", "provides arguments for node initialization"
    def port(port_num)
      begin
        port = Integer(port_num)
        Odyn.port = port
        Odyn.start!
      rescue Exception
        puts "#{port_num} invalid port parameter"
      end
    end
end
  