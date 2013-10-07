module VerificaVazia 
( verificaVazia
, esvaziaArvore
)where

import Aluno
import ArvoreAlunos

verificaVazia :: ArvoreAlunos->Bool
verificaVazia NULL = True
verificaVazia (No a esq dir)
	|No a esq dir == NULL = True
	|No a esq dir /= NULL = False

esvaziaArvore :: ArvoreAlunos -> ArvoreAlunos
esvaziaArvore NULL = NULL
esvaziaArvore (No a esq dir) = NULL
