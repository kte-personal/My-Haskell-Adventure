-- Type Signature vs Expressions
-- Type Error
-- Decleration vs Equations

-- Lets create a simple program:
-- Define my own type, which has values of: yes, nar. Which has opposite values.
-- Then define a morphism which takes in in a yes or nar and morphs into nar or yes

nope :: Bool -> Bool -- Type Signature: nope has value in type Bool -> Bool, which is a morphism
nope x = !x -- Decleration (nope x =)


main :: IO ()
main = do
    let yes = True
    print (nope yes)
