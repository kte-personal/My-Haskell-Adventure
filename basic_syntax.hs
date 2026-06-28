-- Define the mapping of a subset of the Numeric Space, to point in the Numeric Space \
-- Eg: Num a => [a] -> a
-- Define the subset as a sequence of Numeric values, and let result = n0 + n1 + .. + ns \
-- Via recursion.
summ [] = 0
summ (n:ns) = n + summ ns

-- Define the mapping between a subset of the Numeric space, to a point in the Numeric Space \
-- Eg: Num a => [a] -> a
-- Define the subset as a sequence of Numeric values, and let result = 1 + 1 + ... + ns \
-- Via recursion
len [] = 0
len (n:ns) = 1 + len ns

main :: IO ()
main = do
    -- Define the subset 
    let subset = [1,2,3,4,5,6,7] -- Fun fact. This lives inside the Functor Space, since signature is [a], not a. But forget that for now.

    print (summ subset)
    print (len subset)

-- Even though Int is not a subset, it is mathematically true that the Int space perfectly mirrors a specific slice of the Functor space. 
-- In mathematics, we wouldn't say Int is a subset; we would say Int can be embedded into the Functor space.
