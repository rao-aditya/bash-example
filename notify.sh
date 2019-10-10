curl -X POST 'https://hooks.slack.com/services/$CHANNEL/$SECRET/$TOKEN' -H 'content-type: application/json' -d '{"text": "From Jenkins :grin:"}'
