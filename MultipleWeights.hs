module MultipleWeights where 
import Math 

inputs =   [1  ,   2,    3,      2.5]
weights1 = [0.2, 0.8, -0.5,        1]
weights2 = [0.5, -0.91, 0.26,   -0.5]
weights3 = [-0.26, -0.27, 0.17, 0.87]
weights  = [weights1, weights2, weights3] 
bias1 = 2 
bias2 = 3
bias3 = 0.5 
bias = [ bias1, bias2, bias3 ] 
{-
outputs = [
    -- Neuron 1 
    dot inputs weights1 + bias1, 
    -- Neuron 2 
    dot inputs weights2 + bias2, 
    -- Neuron 3 
    dot inputs weights3 + bias3
    ]
-}
outputs = map (\(weights_i, bias_i) -> dot inputs weights_i + bias_i) $ zip weights bias 
