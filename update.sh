#! /bin/bash

msg="$(date)"


echo -e "$(git pull)"

echo -e "$(git add .)"
echo -e "$(git commit -m "$msg")"
echo -e "$(git push origin main)"

