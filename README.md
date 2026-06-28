# My-Haskell-Adventure
A collection of my brain thoughts, while reading: Programming in Haskell, Second Edition. By Graham Hutton 

## basic-syntax.hs
Haskell most primitive "data-structure" is subset of a space.
Space, is this case, is Haskell's type system.

We must define how those subsets transform into other spaces. Example: Numerical -> String
This is called: Morphism

```haskell
-- Define the subset as a sequence of Numeric values, and let result = n0 + n1 + .. + ns
summ [] = 0
summ (n:ns) = n + summ ns

-- Define the subset as a sequence of Numeric values, and let result = 1 + 1 + ... + ns
len [] = 0
len (n:ns) = 1 + len ns

main :: IO ()
main = do
    -- Define the subset 
    let subset = [1,2,3,4]

    print (summ subset) // Fun fact. the print function is a combination of putStrLn and show: putStrLn . show: Value => String => IO
    print (len subset)
```

Outputs:

```bash
10
4
```

