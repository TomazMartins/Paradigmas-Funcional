module ArvoreAlunos 
(	insereAluno
,	excluiAluno
)where

import Aluno



data ArvoreAlunos = NULL
		| No Aluno (ArvoreAlunos)(ArvoreAlunos)
	deriving( Show, Eq, Read )


insereAluno::Aluno->ArvoreAlunos->ArvoreAlunos 
insereAluno x NULL = (No x NULL NULL)
insereAluno x (No y esq dir) = No y esq (insereAluno x dir)

excluiAluno::Aluno->ArvoreAlunos->ArvoreAlunos
excluiAluno x NULL = NULL
excluiAluno x (No y esq dir)
--	| x < y = No y (removeGen x esq) dir
--	| x > y = No y esq (removeGen x dir)
	| x == y = NULL
	| otherwise = NULL
	
	