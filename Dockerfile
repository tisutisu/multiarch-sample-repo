FROM registry.access.redhat.com/ubi9/ubi-micro:9.8-1787778798

LABEL name="sample demo image"
LABEL description="a sample image for demo"
LABEL konflux.additional-tags="test-tag1 test-tag2"

COPY LICENSE /licenses/

RUN echo "\"Hello! I do nothing\"" > entrypoint.sh && \
    chmod +x entrypoint.sh

USER 65532:65532

ENTRYPOINT /entrypoint.sh
