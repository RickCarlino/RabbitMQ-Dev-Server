// import { connect } from "mqtt";
// const URL = "ws://192.168.1.207:3002/ws";

// connect(URL, {});
const mqtt = require('mqtt');
var client = mqtt.connect('mqtt://test.mosquitto.org')

client.on('connect', function () {
  client.subscribe('presence')
  client.publish('presence', 'Hello mqtt')
})

client.on('message', function (topic, message) {
  // message is Buffer
  console.log(message.toString())
  client.end()
})
