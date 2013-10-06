module Aluno where

type Matricula = Int
type Nome = String
type Nota = Float

type AlunoInfo = (Matricula, Nome, Nota)

data Aluno = Aluno AlunoInfo deriving( Show, Eq, Read )