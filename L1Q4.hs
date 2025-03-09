-- Faça um programa que recebe uma string e um valor inteiro referente ao número de vezes que a string deve ser apresentada em tela.
repetirString :: String -> Int -> IO ()
repetirString _ 0 = return ()
repetirString str n = do
    putStrLn str
    repetirString str (n - 1)


main :: IO ()
main = do
    putStrLn "Digite uma string:"
    str <- getLine
    putStrLn "Digite o número de vezes para exibir a string:"
    vezesStr <- getLine
    let vezes = read vezesStr :: Int
    repetirString str vezes