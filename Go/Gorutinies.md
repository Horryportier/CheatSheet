# [[Gorutinies]]
[[Golang]] | [[threads]] | #🔎 | [yt vid](https://www.youtube.com/watch?v=FJo6eQSWruQ)| #💻 
___
> Gorutine is a lightweight thread 
```go
go foo(bar, baz) // -> runs foo(bar, baz) as new goroutine. 
```
> Go evaluates foo , bar and baz in current gorutine but, execution happens in new one. 
___
### example
[source](https://go.dev/tour/concurrency/1)
```go 
package main

import (
	"fmt"
	"time"
)

func say(s string) {
	for i := 0; i < 5; i++ {
		time.Sleep(100 * time.Millisecond)
		fmt.Println(s)
	}
}

func main() {
	go say("world")
	say("hello")
}
```
`Output: world hello hello world hello world world hello world hello`
> Gorutine will return data when process is ready. Which means that  output is not in order and you need to account for that.