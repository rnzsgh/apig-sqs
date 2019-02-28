
URL=$1/p/s

while true; do
  curl -H "Content-Type: application/x-amz-json-1.1" -X POST \
  -d "MessageBody=example" $URL
done
