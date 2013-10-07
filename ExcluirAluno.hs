module ExcluirAluno
( excluirAluno
) where

import Aluno
import ArvoreAlunos
import ConfigurarAluno

excluirAluno :: Aluno -> ArvoreAlunos -> ArvoreAlunos
excluirAluno a NULL = NULL
excluirAluno a (No b esq dir)
   | ( a ) == ( b ) = NULL
   | ( a ) /= ( b ) && ( mostrarMatricula a ) > ( mostrarMatricula b ) = excluirAluno a esq
   | ( a ) /= ( b ) && ( mostrarMatricula a ) < ( mostrarMatricula b ) = excluirAluno a dir