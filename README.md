# Jmeter 5.0

Runs JMX file and complains if any assertion is not passed.

## USAGE

```bash
docker build . -t apium-jmeter:5.0
```

```bash
docker run -v $(pwd)/example:/input apium-jmeter:5.0
```

Output would be at /output folder inside the container.

## TIPS

When extending the image for adding extra files, you can also edit the CMD to allow jmeter run extra params this way:
```
CMD ["bash", "jmx-runner.sh", "-Jenvironment=staging"]
```
