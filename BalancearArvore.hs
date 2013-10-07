module BalancearArvore
( estaBalanceada
, alturaArvore
, balancear
) where

import ArvoreAlunos

alturaArvore :: ArvoreAlunos a -> Int
alturaArvore NULL = 0
alturaArvore (No a arvEsq arvDir) = 1 + max (alturaArvora arvEsq) (alturaArvore arvDir)

estaBalanceada :: ArvoreAlunos a -> Bool
estaBalanceada NULL = true
estaBalanceada (No a arvEsq arvDir) = (-1 <= (alturaArvore arvDir) - (alturaArvore arvEsq) <= 1) && (estaBalanceada arvDir) && (estaBalanceada arvEsq)

balancear :: ArvoreAlunos a -> ArvoreAlunos a
balancear
