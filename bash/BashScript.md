#  [[BashScript]]
---

[cheat sheet](https://devhints.io/bash)

```bash 
#! /bin/bash

NAME="$1"

echo "Hello $NAME!"

# input -> BOB,  output -> Hello BOB!
```
--- 

### Variables

	In bash variables are conventionally ALL CAPITAL.
	There can not be any spaces before "=" and after.
	Use `local` keyword to make var local.

```bash
NAME="John"
echo $NAME
echo "$NAME"
echo "${NAME}!"
```

### [[conditionals-bash]]
```bash
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi
```