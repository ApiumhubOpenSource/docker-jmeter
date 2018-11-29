# Jmeter 4.0

Runs JMX file and complains if any assertion is not passed.

## USAGE

```bash
docker build . -t apium-jmeter:4.0
```

```bash
docker run -v $(pwd)/example:/input apium-jmeter:4.0
```

Output would be at /output folder inside the container.
