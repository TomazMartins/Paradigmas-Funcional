module BuscaBinaria
( buscaBinaria
) where

import Aluno
import ArvoreAlunos
import ConfigurarAluno


buscaBinaria :: Int->ArvoreAlunos->Aluno
buscaBinaria x (No y esq dir)
	|(mostrarMatricula y) == x = y
	|(mostrarMatricula y) > x = buscaBinaria x esq  
	|(mostrarMatricula y) < x = buscaBinaria x dir
	|otherwise = Aluno 0 "nao encontrado" 0