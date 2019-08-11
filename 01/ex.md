# 1. Getting started

1.1 Modify [factorial](factorial.lua) snippet to handle negative numbers.

1.2 Run [twice](twice.lua) example with the `-i` option and with `dofile`

```
$ lua5.3 -i twice.lua
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio
> twice(3)
6.0
$ lua5.3
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio
> twice(3)
stdin:1: attempt to call a nil value (global 'twice')
stack traceback:
        stdin:1: in main chunk
        [C]: in ?
> dofile("twice.lua")
> twice(3)
6.0
```

1.5 Evaluate `type(nil) == nil`

```lua
> type(nil)
nil
> type(nil) == nil
false
```

1.8 Write a program that prints its own [name](name.lua) without knowing it in advance
