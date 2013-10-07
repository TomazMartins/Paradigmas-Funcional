module Chamada
( imprimirChamada
) where

imprimirChamada = do
	contents <- readFile "chamada.txt"
	putStr contents
