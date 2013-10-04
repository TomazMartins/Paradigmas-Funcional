module ArvoreBinaria
( ArvoreBinaria
, preOrdem
, emOrdem
, posOrdem
) where

data ArvoreBinaria elemento = NULL
		| No elemento ( ArvoreBinaria elemento )( ArvoreBinaria elemento )

preOrdem :: ArvoreBinaria elemento -> [ elemento ]
preOrdem NULL = [ ]
preOrdem ( No elem esq dir ) = [ elem ] ++ ( preOrdem esq ) ++ (preOrdem dir )

emOrdem :: ArvoreBinaria elemento -> [ elemento ]
emOrdem NULL = [ ]
emOrdem ( No elem esq dir ) = ( preOrdem esq ) ++ [ elem ] ++ (preOrdem dir )

posOrdem :: ArvoreBinaria elemento -> [ elemento ]
posOrdem NULL = [ ]
posOrdem ( No elem esq dir ) = ( preOrdem esq ) ++ (preOrdem dir ) ++ [ elem ]
