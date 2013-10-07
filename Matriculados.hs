module Matriculados
( verificarMatriculados
) where

import Aluno
import ArvoreAlunos
import ConfigurarAluno


verificarMatriculados :: ArvoreAlunos -> Int
verificarMatriculados NULL = 0
verificarMatriculados ( No a esq dir ) = 1 + (verificarMatriculados esq) + (verificarMatriculados dir)
