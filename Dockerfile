FROM tensorflow/tensorflow:1.11.0

ENV CLOUD_PROVIDER="aws"

ENV AWS_S3_BUCKET="default-bucket"

ENV GKE_BUCKET="default-bucket"

ENV LOG_PREFIX="tensorboard_logs"

COPY bin/entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]
