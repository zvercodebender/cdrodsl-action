        /app/cdro-cli --url ${{ inputs.url }} \
                      --username ${{ inputs.username }} \
                      --password ${{ inputs.user-token }} \
                      --file ${{ inputs.file }}  > results.json 2 /dev/null

        cat results.json | json_pp
