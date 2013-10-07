module InserirAluno
( inserirAluno
) where

import Aluno
import ConfigurarAluno
import ArvoreAlunos

inserirAluno :: Aluno -> ArvoreAlunos -> ArvoreAlunos 
inserirAluno aluno NULL = (No aluno NULL NULL)
inserirAluno a (No b esq dir)
	| (mostrarMatricula a) == (mostrarMatricula b) = (No b esq dir)
	| (mostrarMatricula a) > (mostrarMatricula b) = inserirAluno a esq
	| (mostrarMatricula a) < (mostrarMatricula b) = inserirAluno a dir