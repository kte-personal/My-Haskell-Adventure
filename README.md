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

-- Define the subset as a sequence of Numeric values, and let result = 1 + 1 + ... + ns \
len [] = 0
len (n:ns) = 1 + len ns

main :: IO ()
main = do
    -- Define the subset 
    let subset = [1,2,3,4] -- Fun fact. This lives inside the Functor Space, since signature is [a], not a. But forget that for now.

    print (summ subset)
    print (len subset)

-- Even though Int is not a subset, it is mathematically true that the Int space perfectly mirrors a specific slice of the Functor space. 
-- In mathematics, we wouldn't say Int is a subset; we would say Int can be embedded into the Functor space.
```

Outputs:

```bash
10
4
```

> [!NOTE]
> Takeaway 1. Haskell describes the relationships between spaces, rather than discrete values.

> [!WARNING]
> Some haskellers might punch me for saying that a list of integers is a sequence in a space. Because that's techincally not true.
> But we'll get into that, when we reach functors.


Quotes for later use
<!-- By making IO a Monad, Haskell uses the bind operator (>>=) to force sequencing. -->
