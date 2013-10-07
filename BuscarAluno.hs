module BuscarAluno
( buscarAluno
) where

import Aluno
import ArvoreAlunos
import ConfigurarAluno


buscarAluno :: Int->ArvoreAlunos->Aluno
buscarAluno x (No y esq dir)
	|(mostrarMatricula y) == x = y
	|(mostrarMatricula y) > x = buscarAluno x esq  
	|(mostrarMatricula y) < x = buscarAluno x dir
	|otherwise = Aluno 0 "nao encontrado" 0