module BalancearArvore
( alturaArvore
, estaBalanceada
, rotacionarDir
, rotacionarEsq
, diferencaAltura
, balancear
) where

import ArvoreAlunos
import Aluno

alturaArvore :: ArvoreAlunos -> Int
alturaArvore NULL = 0
alturaArvore (No a arvEsq arvDir) = 1 + max (alturaArvore arvEsq) (alturaArvore arvDir)

estaBalanceada :: ArvoreAlunos -> Bool
estaBalanceada NULL = True
estaBalanceada (No a arvEsq arvDir) = (abs ((alturaArvore arvDir) - (alturaArvore arvEsq)) <= 1) && (estaBalanceada arvDir) && (estaBalanceada arvEsq)

rotacionarDir :: ArvoreAlunos -> ArvoreAlunos
rotacionarDir NULL = NULL
rotacionarDir (No vo (No pai (filhaEsq)(filhaDir)) (tio)) = (No pai (filhaEsq)(No vo (filhaDir)(tio)))

rotacionarEsq :: ArvoreAlunos -> ArvoreAlunos
rotacionarEsq NULL = NULL
rotacionarEsq (No vo (tio) (No pai (filhaEsq)(filhaDir))) = (No pai (No vo (tio)(filhaEsq))(filhaDir))

diferencaAltura :: ArvoreAlunos -> Int
diferencaAltura NULL = 0
diferencaAltura (No a esq dir) = (alturaArvore esq) - (alturaArvore dir)

balancear :: ArvoreAlunos -> ArvoreAlunos
balancear NULL = NULL
balancear (No a esq dir)  
	|abs (diferencaAltura (No a esq dir)) < 2 = (No a esq dir)
	|(diferencaAltura (No a esq dir)) == 2 && (diferencaAltura esq) /= -1 = rotacionarDir (No a esq dir)
	|(diferencaAltura (No a esq dir)) == 2 && (diferencaAltura esq) == -1 = rotacionarDir (No a (rotacionarEsq esq) dir)
	|(diferencaAltura (No a esq dir)) == -2 && (diferencaAltura esq) /= 1 = rotacionarEsq (No a esq dir)
	|(diferencaAltura (No a esq dir)) == -2 && (diferencaAltura esq) == -1 = rotacionarEsq (No a esq (rotacionarDir dir))