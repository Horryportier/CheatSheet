# [[Code organization]]
#🌱 | [[Golang]] | #💻 | [[go tool]] | [[go.mod]] | [[naming convection]] | [How to Write Go Code](https://go.dev/doc/code#Organization) | [golang project structure](https://www.youtube.com/watch?v=l9rMdKO1Vto) | [pdf](https://go.dev/talks/2014/organizeio.slide#1)
___
### Module 
>Root directory is a module and needs to have [[go.mod]] also by convection has `main.go` .
  [[go.mod]] allows to menage  dependency and is build in a way that allows ease of distribution, mainly [[github]] repo. 

### Package 
>Every  file in an directory is a part of a package. All files in  the same dir are compiled together {[[go tool]]}, and all Functions, types, variables are visible to other files. 

![[structure.png|350]]