echo TRAVIS_TAG=$TRAVIS_TAG


if [ -z ${TRAVIS_TAG} ] ; then
  exit 0
fi
TRIGGER_PAYLOAD="{\"source_type\": \"Tag\", \"source_name\": \"$TRAVIS_TAG\"}"
curl -H "Content-Type: application/json" --data "$TRIGGER_PAYLOAD" -X POST $DOCKERHUB_TRIGGER_URL
