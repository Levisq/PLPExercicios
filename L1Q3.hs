--Faça um programa que recebe uma string e um valor inteiro referente ao número de vezes que a string deve ser apresentada em tela.
lerNumeros :: IO [Int]
lerNumeros = do
    input <- getLine
    let num = read input :: Int
    if num == -1
        then return []
        else do
            resto <- lerNumeros
            return (num : resto)

main :: IO ()
main = do
    putStrLn "Digite números inteiros (digite -1 para parar):"
    numeros <- lerNumeros
    putStrLn "Números na ordem inversa:"
    print (reverse numeros)