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
data MyType where -- Syntax came from: https://ghc.gitlab.haskell.org/ghc/doc/users_guide/exts/gadt.html
    Yes :: MyType
    Nar :: MyType
    deriving (Show) -- So we can print

thinkNot :: MyType -> MyType -- Type Signature
thinkNot Yes = Nar -- Equations. Must the inline with the Type Signature due to scoping. But feels kinda gross. \
thinkNot Nar = Yes -- It's feels gross, because a Type Signature (should?) be coupled with the equations. \
                   -- Though, it's kinda ok, if you think Type Signature and Equations are indepentent of each other.

main :: IO ()
main = do
    print (nope yes)
    print (thinkNot yay)
        where
            yay = Yes
            yes = True
