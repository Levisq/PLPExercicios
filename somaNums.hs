--Escreva um programa que recebe um inteiro e soma os seus digitos repetidamente até que o resultado tenha um único digito.
sumList :: [Int] -> Int
sumList [] = 0
sumList (num:lista) = num + sumList lista

digitsToIntList :: String -> [Int]
digitsToIntList = map (read . (:[]))

singleDigitSum :: Int -> Int
singleDigitSum n
    | n < 10 = n
    | otherwise = singleDigitSum (sumList (digitsToIntList (show n)))

main :: IO ()
main = do
    input <- getLine
    let num = read input :: Int
    print (singleDigitSum num)