import System.Random

parametric x y = x * (y + 1)

doubleUs x y = doubleMe x + doubleMe y

doubleMe x = x + x

doubleSmallNumber x = if x > 100 then x else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

tripleLargeNumber x = if x > 100
              then x * 3
              else x
              
cons = randomIO :: IO Int

