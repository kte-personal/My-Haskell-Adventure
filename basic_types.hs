-- Type Signature vs Expressions
-- Type Error
-- Decleration vs Equations

-- Step 1. Lets create our own 'not' "operator" and call it nope
nope :: Bool -> Bool -- Type Signature
nope True = False
nope False = True

-- Lets create a simple program:
-- Define my own type, which has values of: yes, nar. Which has opposite values.
-- Then define a morphism which takes in in a yes or nar and morphs into nar or yes

main :: IO ()
main = do
    print (nope yes)
        where
            yes = True
