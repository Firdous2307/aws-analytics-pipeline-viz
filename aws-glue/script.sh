aws glue create-database \
    --database-input "{\"Name\":\"$database_name\"}" \
    --profile "$my_profile" \
    --endpoint "$endpoint"

    