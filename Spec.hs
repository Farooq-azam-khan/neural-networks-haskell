module Spec where 
    
import Test.Hspec 
import Test.QuickCheck 
import Control.Exception (evaluate)
import Main hiding (main)

compare_float :: Float -> Float -> Bool 
compare_float opt val = (opt - val) <= 1e-2 

empty_float_list :: [Float]
empty_float_list = [] 

main :: IO ()
main = hspec $ do 
    describe "neuron" $ do 
        it "weight * input + bias" $ do 
            compare_float output0 2.3
        it "weight * input + bias (example 2)" $ do 
            compare_float output1 4.8
    describe "dot tests" $ do 
        it "tests an empty list" $ do 
            dot empty_float_list empty_float_list `shouldBe` 0
        it "tests elements with 1 value" $ do 
            compare_float (dot [1.0] [1.0]) 1.0 
