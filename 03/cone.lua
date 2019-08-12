-- Right circular cone
local rccone = {}

function rccone.volume (r, h)
  return (math.pi * r^2 * h)/3.0
end

function rccone.radius(alpha, h)
  cotan = 1.0 / math.tan(math.rad(alpha))
  return h * cotan
end

function main(h, alpha)
  r = rccone.radius(alpha, h)
  return rccone.volume (r, h)
end

print(main(arg[1], arg[2]))
