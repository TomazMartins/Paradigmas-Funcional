module ConfigurarAluno
( mostrarMatricula
, mostrarNome
, mostrarNota
) where

import Aluno

mostrarMatricula :: Aluno -> Int
mostrarMatricula aluno = matricula aluno

mostrarNome :: Aluno -> String
mostrarNome aluno = nome aluno

mostrarNota :: Aluno -> Float
mostrarNota aluno = nota aluno