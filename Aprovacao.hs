module Aprovacao
( calcularAprovados
, calcularReprovados
) where

import Aluno
import ArvoreAlunos
import ConfigurarAluno

calcularAprovados :: ArvoreAlunos -> Int
calcularAprovados NULL = 
calcularAprovados ( No a esq dir )
	| (mostrarNota a) > 5.0 = 1 + (calcularAprovados esq) + (calcularAprovados dir)
	| (mostrarNota a) == 5.0 = 1 + (calcularAprovados esq) + (calcularAprovados dir)
	| (mostrarNota a) < 5.0 = 0 + (calcularAprovados esq) + (calcularAprovados dir)

calcularReprovados :: ArvoreAlunos -> Int
calcularReprovados NULL = 0
calcularReprovados ( No a esq dir )
	| (mostrarNota a) < 5 = 1 + (calcularReprovados esq) + (calcularReprovados dir)
	| (mostrarNota a) > 5.0 = 0 + (calcularReprovados esq) + (calcularReprovados dir)
	| (mostrarNota a) == 5.0 = 0 + (calcularReprovados esq) + (calcularReprovados dir)