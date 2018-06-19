require "pry"
require "bunny"

# Start a communication session with RabbitMQ
conn = Bunny.new
conn.start

# open a channel
ch = conn.create_channel

# declare a queue
q  = ch.queue("test1")

10.times do
  # publish a message to the default exchange which then gets routed to this queue
  opts = { routing_key: "bot/#{rand(0..999)}/logs" }
  q.publish("Hello, everybody!", opts)

  # # fetch a message from the queue
  # delivery_info, metadata, payload = q.pop
  # puts "This is the message: #{payload}"
end

# close the connection
conn.stop

