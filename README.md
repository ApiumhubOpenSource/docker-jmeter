# Jmeter 3.3

Runs JMX file and complains if any assertion is not passed.

## USAGE

```bash
docker build . -t apium-jmeter:3.3
```

```bash
docker run -v $(pwd)/example:/input apium-jmeter:3.3
```

Output would be at /output folder inside the container.
