module Main where

inputs = [1,2,3]
weights = [0.2, 0.8, -0.5]
bias = 2 

output0 :: Float 
output0 = (inputs !! 0 * weights !! 0 + inputs !! 1*weights !! 1 + inputs !! 2*weights !! 2 + bias)

dot :: [Float] -> [Float] -> Float 
dot [] [] = 0 
dot (x:[]) (y:[]) = x*y 
dot (x:xs) (y:ys) = x*y + dot xs ys 

inputs1 = [1.0, 2.0, 3.0, 2.5]
weights1 = [0.2, 0.8, -0.5, 1.0]
bias1 = 2.0 

output1 = dot inputs1 weights1 + bias1

main = putStrLn "Hello world"
