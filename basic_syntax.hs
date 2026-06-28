-- Define the mapping of a subset of the Numeric Space, to point in the Numeric Space \
-- Define the subset as a sequence of Numeric values, and let result = n0 + n1 + .. + ns \
-- Via recursion.
summ [] = 0
summ (n:ns) = n + summ ns

-- Define the mapping between a subset of the Numeric space, to a point point in the Numeric Space
-- Define the subset as a sequence of Numeric values, and let result = 1 + 1 + ... + ns
len [] = 0
len (n:ns) = 1 + len ns

main :: IO ()
main = do
    -- Define the subset 
    let subset = [1,2,3,4]

    print (summ subset)
    print (len subset)
