aws athena start-query-execution \
    --query-string "file://sample_query.sql" \
    --result-configuration "OutputLocation=s3://firdous-data-analytics-bucket/"
