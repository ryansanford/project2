echo TRAVIS_TAG=$TRAVIS_TAG
TRIGGER_PAYLOAD="{/"source_type/": \"Tag\", \"source_name\": \"$TRAVIS_TAG\"}"
curl -H "Content-Type: application/json" --data "$TRIGGER_PAYLOAD" -X POST $DOCKERHUB_TRIGGER_URL
