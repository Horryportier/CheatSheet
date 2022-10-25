# [[make]]
#🌱  | [[Golang]] | #💻  
___

> Make creates dynamiclly sized arrays. 

```go 
a := make([]int, 69) // len(a)=69
```

> Add third argument to specify capacity.

```go
b := make([]int, 0, 5) // len(b)=0, cap(b)=5

b = b[:cap(b)] // len(b)=5, cap(b)=5
b = b[1:]      // len(b)=4, cap(b)=4
```
