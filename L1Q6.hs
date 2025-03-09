-- Defina uma função que converte um número decimal no seu respectivo binário.
convBinario :: Int -> [Int]
convBinario 0 = []
convBinario n = convBinario (div n 2) ++ [mod n 2]

main :: IO ()
main = do
    putStrLn "Digite um número para converter em binário:"
    input <- getLine
    let num = read input :: Int
    let binario = convBinario num
    putStrLn ("O número " ++ show num ++ " em binário é: " ++ show binario)