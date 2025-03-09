-- 1) Uma empresa decidiu dar a seus funcionários um abono de salario, baseando-se nos pontos obtidos durante o mês,
-- de acordo com a tabela: 1 a 10 = 100, 11 a 20 = 200, 21 a 30 = 300, 31 a 40 = 400, > 41 = 500
-- Faça um programa que, dado o número de pontos alcançado pelo funcionário, indique qual foi seu prêmio.

calculaBon :: Int -> Float
calculaBon ponto
    | ponto > 0 && ponto < 11 = 100.00
    | ponto > 10 && ponto < 21 = 200.00
    | ponto > 20 && ponto < 31 = 300.00
    | ponto > 30 && ponto < 41 = 400.00
    | ponto > 40 = 500.00
    | otherwise = 0


main :: IO ()
main = do
    putStrLn "Digite seus pontos:"
    input <- getLine
    let pontos = read input :: Int
    let bonus = calculaBon pontos
    putStrLn $ "Seu bônus é: " ++ show bonus