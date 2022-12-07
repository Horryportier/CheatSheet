#! /bin/bash

msg="$(date)"

echo "$(git add .)"
echo "$(git commit -m '$msg')"
echo "$(git push origin main)"

