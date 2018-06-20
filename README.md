# Warning

This is a Rabbit MQ docker image for local development.

Don't use it on public networks or with real bots. Security is minimal.

# Build

```

sudo docker build . --tag=stub_mq

```

# Run

```

sudo docker run -p 15672:15672 -p 5672:5672 -p 3002:15675 -p 8883:8883 -p 1883:1883 stub_mq

```

# Debug

Visit [http://localhost:15672](http://localhost:15672) as `guest:guest`.
