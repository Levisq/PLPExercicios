module Main where

-- Simulação de batalha de tripulações onde as tripulações possuem uma quantidade de membros e uma força de combate específica.
-- Durante uma batalha entre duas tripulações, a força de combate de cada tripulação é representada por uma lista de números inteiros, onde cada número corresponde à força de um membro.
-- O objetivo é determinar qual tripulação tem a maior força de combate somando as forças dos membros da tripulação.

combate :: [Int] -> [Int] -> String
combate tripu1 tripu2
    | forca1 > forca2 = "Tripulação 1 venceu"
    | forca2 > forca1 = "Tripulação 2 venceu"
    | otherwise       = "Empate"
    where
        forca1 = sumList tripu1
        forca2 = sumList tripu2

sumList :: [Int] -> Int
sumList [] = 0
sumList (num:lista) = num + sumList lista

readIntList :: String -> [Int]
readIntList = map read . words

main :: IO ()
main = do
    putStrLn "Digite as forças da Tripulação 1 (como uma lista de inteiros, separada por espaços):"
    input1 <- getLine
    let tripulacao1 = readIntList input1
    
    putStrLn "Digite as forças da Tripulação 2 (como uma lista de inteiros, separada por espaços):"
    input2 <- getLine
    let tripulacao2 = readIntList input2
    
    putStrLn (combate tripulacao1 tripulacao2)