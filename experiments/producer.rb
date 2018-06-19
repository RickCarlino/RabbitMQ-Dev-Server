require "pry"
require "bunny"
require "securerandom"

# Start a communication session with RabbitMQ
conn = Bunny.new
conn.start

# open a channel
ch = conn.create_channel

# declare a queue

10.times do
  q  = ch.queue("test1-*", auto_delete: true)
  # 5.times do
  #   # publish a message to the default exchange which then gets routed to this queue
  #   opts = {
  #     routing_key: "bot/#{rand(0..999)}/logs",
  #     persistent: true
  #   }
  #   q.publish("Hello, everybody!", opts)
  # end
  20.times do
    delivery_info, metadata, payload = q.pop
    puts "This is the message: #{payload}"
  end
end

# close the connection
conn.stop

