module ListarAluno
( listarAluno
) where

import Aluno
import ConfigurarAluno
import ArvoreAlunos

listarAluno::ArvoreAlunos ->[Aluno]
listarAluno NULL = []
listarAluno (No x esq dir)=(listarAluno esq) ++ [x] ++ (listarAluno dir)