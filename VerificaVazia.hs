module VerificaVazia 
( verificaVazia
)where

import Aluno
import ArvoreAlunos

verificaVazia::ArvoreAlunos->Bool
verificaVazia NULL = True
verificaVazia (No a esq dir)
	|No a esq dir == NULL = True
	|No a esq dir /= NULL = False