module Aluno where

data Aluno = Aluno { matricula :: Int
                   , nome :: String
                   , nota :: Float
                   } deriving( Show, Eq, Read )
