[Wiki](https://en.wikipedia.org/wiki/Type_punning)| #💻 | #🔎 
___
>Fancy name for technique  of doing unconventional stuff that would be hard or impossible other way around.
___
#### example
```c
//Floting point
// normal way of doing things.
bool is_negative(float x) {
    return x < 0.0;
}
```
```c
// Floating point comparisons are expensive. But float32 is valid int32, which means we can take pointer of x and asigng it to int32 witch means that we are compering ints, more effichent way but not perfect. https://en.wikipedia.org/wiki/Type_punning#C_and_C++
bool is_negative(float x) {
    union {
        unsigned int ui;
        float d;
    } my_union = { .d = x };
    return my_union.ui & 0x80000000;
}
```