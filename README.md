# psycopg2-lambda-layer-rdspostgresql
AWS Lambda layer for psycopg2


To use in your serverless.yml:
```
functions:
  hello:
    handler: handler.hello
    layers:
      # py 3.8:
      - arn:aws:lambda:ap-northeast-1:507248097872:layer:pycopg2:1
```

```
custom:
  pythonRequirements:
    noDeploy:
      - pycopg2
```
## Regions
Please use the layer that matches your region, or you will get a permissions error.

If you desire another region, please open an issue.
