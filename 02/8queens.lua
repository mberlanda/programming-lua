N = 8 -- board size

-- check whether position (n, c) is free from attacks
function isplaceok (a, n ,c)
  for i = 1, n - 1 do -- for each queen already placed
    if (a[i] == c) or       -- same column?
    (a[i] - i == c - n) or    -- same diagonal?
    (a[i] + i == c + n) then  -- same diagonal?
      return false -- place can be attacked
    end
  end
  return true -- no attacks; place is OK
end

-- print a board
function printsolution (a)
  for i = 1, N do         -- for each row
    for j = 1, N do       -- and for each column
      -- write "X" or "-" plus a space
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
  if n > N then -- all queens have been placed?
    printsolution(a)
  else -- try to place n-th queen
    for c = 1, N do
      if isplaceok(a, n, c) then
        a[n] = c -- place n-th queen at column 'c'
        addqueen(a, n + 1)
      end
    end
  end
end

-- run the program
-- addqueen({}, 1)

-- 2.1 Stop after first solution

print("Ex 2.1")

function addqueenB (a, n)
  if n > N then -- all queens have been placed?
    return true
  else -- try to place n-th queen
    for c = 1, N do
      if isplaceok(a, n, c) then
        a[n] = c -- place n-th queen at column 'c'
        if addqueenB(a, n + 1) then return true end
      end
    end
  end
  return false
end

-- sol = {}
-- sol = {1}
sol = {1, 5}
if not addqueenB(sol, #sol + 1) then
  print("failed")
else
  printsolution(sol)
end
print("End Ex 2.1")

-- 2.2 Solve the puzzle using permutations

local function addqueenP (a, n)
  n = n or 1
  if n > N then
    -- verify the permutation
    local valid
    for r = 2, N do  -- start from 2nd row
      valid = isplaceok(a, r, a[r])
      if not valid then break end
    end
    if valid then printsolution(a) end
  else
    -- generate all possible permutations
    for c = 1, N do
      a[n] = c
      addqueenP(a, n + 1)
    end
  end
end

-- run the program
-- addqueenP({})     -- empty board
-- addqueenP({1}, 2) -- a queen in 1st row and 1st column

print("End Ex 2.2")
