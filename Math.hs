module Math where 

dot :: [Float] -> [Float] -> Float 
dot [] [] = 0 
dot (x:[]) (y:[]) = x*y 
dot (x:xs) (y:ys) = x*y + dot xs ys 



