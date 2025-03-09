--Defina uma função que recebe dois inteiros e mostra todos os pares entre esses valores.
mostraPar :: Int -> Int -> [Int]
mostraPar a b = [x | x <- [min a b .. max a b], mod x 2 == 0]

main :: IO ()
main = do
    -- Teste 1: de 10 a 20
    let resultado1 = mostraPar 10 20
    putStrLn ("Números pares de 10 a 20: " ++ show resultado1)
    
    -- Teste 2: de 20 a 10
    let resultado2 = mostraPar 20 10
    putStrLn ("Números pares de 20 a 10: " ++ show resultado2)
    
    -- Teste 3: de 5 a 15
    let resultado3 = mostraPar 5 15
    putStrLn ("Números pares de 5 a 15: " ++ show resultado3)