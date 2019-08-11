#!/usr/bin/env lua
-- define factorial function
function fact (n)
  if n > 0 then
    return n * fact(n-1)
  elseif n == 0 then
    return 1
  else
    return nil
  end
end

print("enter a number:")
a = io.read("*n")
print(fact(a))
