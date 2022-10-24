# [[Functions]]

[[BashScript]] | [CheatSheet](https://devhints.io/bash#functions)
___
### Deceleration 
```bash
myfunc() {
    echo "hello $1"
}
```

```bash
# Same as above (alternate syntax)
function myfunc() {
    echo "hello $1"
}
```

```bash
myfunc "John" # -> hello Jhon
```
___
### Returning
```bash
myfunc() {
    local myresult='some value'
    echo $myresult
}
```

```bash
result="$(myfunc)"
```
___
### Arguments
>`$#` Number of arguments
 `$*` All positional arguments (as a single word)
 `$@` All positional arguments (as separate strings)
 `$1` First argument
 `$_` Last argument of the previous command
 **Note**: `$@` and `$*` must be quoted in order to perform as described. Otherwise, they do exactly the same thing (arguments as separate strings).
See [Special parameters](http://wiki.bash-hackers.org/syntax/shellvars#special_parameters_and_shell_variables).
___
### Raising errors
```bash
myfunc() {
  return 1
}
```

```bash
if myfunc; then
  echo "success"
else
  echo "failure"
fi
```