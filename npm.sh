#!/bin/bash
COM="$*"
echo $COM
docker-compose exec frontend /bin/bash -c "npm $COM"