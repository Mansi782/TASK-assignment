#!/bin/bash

servers=("server1" "server2" "server3")

echo "All servers:"
for server in "${servers[@]}"
do
    echo $server
done
