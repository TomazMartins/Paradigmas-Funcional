module OperacoesArvore
( inserirAluno
, excluirAluno
, buscarAluno
, listarAluno
, verificarVazia
, esvaziarArvore
, verificarMatriculados
, alturaArvore
, estaBalanceada
, rotacionarDir
, rotacionarEsq
, diferencaAltura
, balancear
) where

import Aluno
import ArvoreAlunos
import ConfigurarAluno

inserirAluno :: Aluno -> ArvoreAlunos -> ArvoreAlunos 
inserirAluno aluno NULL = (No aluno NULL NULL)
inserirAluno a (No b esq dir)
	| (mostrarMatricula a) == (mostrarMatricula b) = (No b esq dir)
	| (mostrarMatricula a) > (mostrarMatricula b) = inserirAluno a esq
	| (mostrarMatricula a) < (mostrarMatricula b) = inserirAluno a dir

excluirAluno :: Aluno -> ArvoreAlunos -> ArvoreAlunos
excluirAluno a NULL = NULL
excluirAluno a (No b esq dir)
   | ( a ) == ( b ) = NULL
   | ( a ) /= ( b ) && ( mostrarMatricula a ) > ( mostrarMatricula b ) = excluirAluno a esq
   | ( a ) /= ( b ) && ( mostrarMatricula a ) < ( mostrarMatricula b ) = excluirAluno a dir

buscarAluno :: Int -> ArvoreAlunos -> Aluno
buscarAluno x NULL = Aluno 0 "nao encontrado" 0.0
buscarAluno x (No y esq dir)
	|(mostrarMatricula y) == x = y
	|(mostrarMatricula y) > x = buscarAluno x esq  
	|(mostrarMatricula y) < x = buscarAluno x dir
	|otherwise = Aluno 0 "nao encontrado" 0

listarAluno::ArvoreAlunos -> [String]
listarAluno NULL = []
listarAluno (No x esq dir)=(listarAluno esq) ++ [mostrarNome x] ++ (listarAluno dir)

verificarVazia :: ArvoreAlunos -> Bool
verificarVazia NULL = True
verificarVazia (No a esq dir)
	|No a esq dir == NULL = True
	|No a esq dir /= NULL = False

esvaziarArvore :: ArvoreAlunos -> ArvoreAlunos
esvaziarArvore NULL = NULL
esvaziarArvore (No a esq dir) = NULL

verificarMatriculados :: ArvoreAlunos -> Int
verificarMatriculados NULL = 0
verificarMatriculados ( No a esq dir ) = 1 + (verificarMatriculados esq) + (verificarMatriculados dir)

alturaArvore :: ArvoreAlunos -> Int
alturaArvore NULL = 0
alturaArvore (No a arvEsq arvDir) = 1 + max (alturaArvore arvEsq) (alturaArvore arvDir)

estaBalanceada :: ArvoreAlunos -> Bool
estaBalanceada NULL = True
estaBalanceada (No a arvEsq arvDir) = (abs ((alturaArvore arvDir) - (alturaArvore arvEsq)) <= 1) && (estaBalanceada arvDir) && (estaBalanceada arvEsq)

rotacionarDir :: ArvoreAlunos -> ArvoreAlunos
rotacionarDir NULL = NULL
rotacionarDir (No vo (No pai (filhaEsq)(filhaDir)) (tio)) = (No pai (filhaEsq)(No vo (filhaDir)(tio)))

rotacionarEsq :: ArvoreAlunos -> ArvoreAlunos
rotacionarEsq NULL = NULL
rotacionarEsq (No vo (tio) (No pai (filhaEsq)(filhaDir))) = (No pai (No vo (tio)(filhaEsq))(filhaDir))

diferencaAltura :: ArvoreAlunos -> Int
diferencaAltura NULL = 0
diferencaAltura (No a esq dir) = (alturaArvore esq) - (alturaArvore dir)

balancear :: ArvoreAlunos -> ArvoreAlunos
balancear NULL = NULL
balancear (No a esq dir)  
	|abs (diferencaAltura (No a esq dir)) < 2 = (No a esq dir)
	|(diferencaAltura (No a esq dir)) == 2 && (diferencaAltura esq) /= -1 = rotacionarDir (No a esq dir)
	|(diferencaAltura (No a esq dir)) == 2 && (diferencaAltura esq) == -1 = rotacionarDir (No a (rotacionarEsq esq) dir)
	|(diferencaAltura (No a esq dir)) == -2 && (diferencaAltura esq) /= 1 = rotacionarEsq (No a esq dir)
	|(diferencaAltura (No a esq dir)) == -2 && (diferencaAltura esq) == -1 = rotacionarEsq (No a esq (rotacionarDir dir))
