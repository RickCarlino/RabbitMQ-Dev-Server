# Warning

This is a Rabbit MQ docker image that has 0 security features (for easier software development). It is irresponsible to use it on a public facing / un-firewalled server.

# Build

```
sudo docker build .
```

# Run

```

sudo docker run -p 15672:15672 -p 5672:5672 -p 3002:15675 -p 8883:8883 -p 1883:1883 stub_mq

```

# Login

Use it like any other MQTT broker, but without a username / password.
