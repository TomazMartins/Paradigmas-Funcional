module ArvoreAlunos where

import Aluno

data ArvoreAlunos = NULL
		| No Aluno ( ArvoreAlunos )( ArvoreAlunos )
	deriving( Show, Eq, Read )
