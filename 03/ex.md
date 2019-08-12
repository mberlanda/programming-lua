# 3. Numbers

3.1 Which of the following are valid numerals? What are their values?

 numeral | valid | value
---------|-------|------
`.0e12`  | true  | `0.0`
`.e12`   | false | unexpected symbol near '.'
`0.0e`   | false | malformed number near '0.0e'
`0x12`   | true  | `18`
`0xABF`  | false | unexpected symbol near '0xABF'
`0xA`    | true  | `10`
`FFFF`   | false | `nil`
`0xFFFFFFFF` | true | `4294967295`
`0x`     | false | malformed number near '0x'
`0x1P10` | true  | `1024.0`
`0.1e1`  | true  | `1.0`
`0x0.1p1` | true | `0.125`

3.2 Explain the following results

expression | result
-----------|-------
math.maxinteger * 2 | -2
math.mininteger * 2 | 0
math.maxinteger * math.maxinteger | 1
math.mininteger * math.mininteger | 0

Reasons:

- 64-bit integers: up to 2^63-1
- *wrap around*: modulo 2^64

3.3 Print the result of a given [snippet](exx33.lua)

3.4 Result of the following expressions:

```lua
2^3^4  -- 2.4178516392293e+24
2^-3^4 -- 4.1359030627651e-25
```

3.5 The number 12.7 is equal to the fraction 127/10, where the denominator is power of
 ten.

 - Can you express it as a common fraction where the denominator is power of two?
    No, since the last decimal digit is not 5 => .7, .4, .8, .6, .2, .4 ...
 - What about the number 5.5? `11/2`

3.6 Write a function to compute the volume of a right circular cone, given its heiht and the angle between a generatrix and the axis. => [cone](cone.lua)
