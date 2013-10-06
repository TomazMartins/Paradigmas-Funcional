module Main where

-- import outros modulos


main = do
	putStrLn "   "
	putStrLn "   Seja bem-vindo a Agenda da"
	putStrLn "   Disciplina de Programacao em Haskell!"
	putStrLn "   "

	putStrLn "   Verifique os comandos para cada funcao:"
	putStrLn "   "
	putStrLn "     1  - Verificar quantidade de estudantes inscritos."
	putStrLn "     2  - Verificar lista de estudantes inscritos."
	putStrLn "     3  - Verificar quantidade de aprovados."
	putStrLn "     4  - Verificar quantidade de reprovados."
	putStrLn "     5  - Consultar dados de um estudante."
	putStrLn "     6  - Alterar dados de um estudante."
	putStrLn "     7  - Incluir novo aluno na disciplina."
	putStrLn "     8  - Excluir aluno da disciplina."
	putStrLn "     9  - Finalizar disciplina."
	putStrLn "     10 - Finalizar programa."
	putStrLn "   "
	opcao <- getLine
	


