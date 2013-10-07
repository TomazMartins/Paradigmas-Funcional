module ArvoreAlunos where

import Aluno
import ConfigurarAluno

data ArvoreAlunos = NULL
		| No Aluno (ArvoreAlunos)(ArvoreAlunos)
	deriving( Show, Eq, Read )
