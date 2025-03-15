EXAMPLE_ENV="example.env"
ENV_FILE=".env"
if [ ! -f "$ENV_FILE" ]; then
  cp "$EXAMPLE_ENV" "$ENV_FILE"
  echo "$ENV_FILE file created from $EXAMPLE_ENV"
else
  echo "$ENV_FILE file already exists"
fi