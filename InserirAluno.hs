module InserirAluno
( insereAluno
) where

import ArvoreAlunos

insereAluno :: Aluno -> ArvoreAlunos -> ArvoreAlunos 
insereAluno x NULL = (No x NULL NULL)
insereAluno x (No y esq dir) = No y esq (insereAluno x dir)