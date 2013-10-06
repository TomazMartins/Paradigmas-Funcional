module ArvoreAlunos 
(	insereAluno
,	excluiAluno
)where

import Aluno

data ArvoreAlunos = NULL
		| No Aluno (ArvoreAlunos)(ArvoreAlunos)
	deriving( Show, Eq, Read )
	
	