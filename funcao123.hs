import System.IO

type Matricula = Int
type Nome = String
type Nota = Float

data Aluno =Aluno [(Matricula,Nome,Nota)]
	deriving(Show)

insereAluno::Aluno->(Matricula,Nome,Nota)->Aluno
insereAluno Aluno aluno (Matricula,Nome,Nota) = Aluno aluno:( Matricula,Nome,Nota)
