
# Building image
docker build . -t synthetic-pl-test:1.0.0

# Runing a container
- Each run occurs at a one-minute interval. To run the check for 10 minutes, set TIMES_PER_RUN to 10.
- The TEST_ENDPOINT variable specifies the endpoint to be tested.
- The script's output is sent to stdout/stderr, allowing you to leverage your container monitoring platform by indexing its logs.

```
docker run -d --rm --name curl-agent \
-e TIMES_PER_RUN=10 \
-e TEST_ENDPOINT="https://example.com" \
synthetic-pl-test:1.0.0
```
