# Jmeter 3.3

Runs JMX file and complains if any assertion is not passed.

## USAGE

```bash
docker build . -t apium-jmeter:3.3
```

```bash
run -d -v $(pwd)/example:/input apium-jmeter:3.3
```

Output would be at /output folder inside the container.

Check the tests in /test folder for more examples.
