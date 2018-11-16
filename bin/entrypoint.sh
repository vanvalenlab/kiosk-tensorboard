#!/usr/bin/env bash

LOGDIR=$([[ $CLOUD_PROVIDER = aws ]] && echo s3://${AWS_S3_BUCKET}/${LOG_PREFIX} || echo gs://${GKE_BUCKET}/${LOG_PREFIX})

tensorboard --logdir $LOGDIR --host 0.0.0.0
