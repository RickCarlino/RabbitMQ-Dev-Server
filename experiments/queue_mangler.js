var client = mqtt.connect("ws://localhost:3002/ws");

client.on('connect', function () {
  console.log("connect");
  client.subscribe('presence')
  // client.publish('presence', 'this is it!', { qos: 1, durable: true });
})

client.on("error", function (a, b, c) {
  console.log("error");
  d = a;
  e = b;
  f = c;
  debugger;
});

client.on('message', function (topic, message) {
  // message is Buffer
  console.log("message");

  console.log(message.toString())
  client.end()
})
