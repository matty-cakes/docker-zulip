build:
    sudo docker compose build

run:
    sudo docker compose up --detach

# create-backup:
#     #!/usr/bin/bash
#     set -euxo pipefail
#     NAMED_VOLUME="continuwuity-app_db"

#     docker compose stop
#     docker run --rm \
#         -v ${NAMED_VOLUME}:/volume \
#         -v $(pwd):/backup \
#         alpine \
#         tar czf /backup/${NAMED_VOLUME}_backup.tar.gz -C /volume .
#     docker compose start
#     awsv2 s3api put-object \
#         --bucket hyo-backups \
#         --key "continuwuity-app/$(date +%Y-%m-%d_%H-%M-%S)/${NAMED_VOLUME}_backup.tar.gz" \
#         --body ${NAMED_VOLUME}_backup.tar.gz \
#         --endpoint-url https://7231aa7b084ab2c6721584cd812ffa03.r2.cloudflarestorage.com
