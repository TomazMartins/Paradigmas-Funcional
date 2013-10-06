module ExcluirAluno
( excluiAluno
) where

import ArvoreAluno

excluiAluno::Aluno->ArvoreAlunos->ArvoreAlunos
excluiAluno x NULL = NULL
excluiAluno x (No y esq dir)
--	| x < y = No y (removeGen x esq) dir
--	| x > y = No y esq (removeGen x dir)
	| x == y = NULL
	| otherwise = NULL