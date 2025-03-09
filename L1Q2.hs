--Faça uma função que recebe um numero e retorna verdadeiro se o numero for par.
ePar :: Int -> Bool
ePar num = mod num 2 == 0

main :: IO ()
main = do
    putStrLn "Digite um número inteiro:"
    input <- getLine
    let num = read input :: Int
    if ePar num
        then putStrLn "O número é par."
        else putStrLn "O número é ímpar."