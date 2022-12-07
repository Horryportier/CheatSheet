#! /bin/bash

echo "$(git add .)"
echo "$(git commit -m '${date}')"
echo "$(git push origin main)"

