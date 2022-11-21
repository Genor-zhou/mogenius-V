#!/bin/sh
if [ ! -f UUID ]; then
  UUID="25d287eb-bc90-405e-82cf-1c82f2e24256"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

