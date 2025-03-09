-- Defina uma função que converte um número decimal no seu respectivo binário.
ehPrimo :: Int -> Bool
ehPrimo n
    | n < 2 = False
    | otherwise = all (\x -> n `mod` x /= 0) [2..n-1]

main :: IO ()
main = do
    putStrLn "Digite um número para verificar se é primo:"
    numStr <- getLine
    let num = read numStr :: Int
    if ehPrimo num
        then putStrLn "O número é primo."
        else putStrLn "O número não é primo."