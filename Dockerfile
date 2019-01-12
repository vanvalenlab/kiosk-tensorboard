# Build arg to easily change base image
ARG TF_VERSION=1.11.0
FROM tensorflow/tensorflow:${TF_VERSION}

ENV CLOUD_PROVIDER="aws"

ENV AWS_S3_BUCKET="default-bucket"

ENV GKE_BUCKET="default-bucket"

ENV LOG_PREFIX="tensorboard_logs"

COPY bin/entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]
