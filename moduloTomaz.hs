module ArvoreBinaria
( ArvoreBinaria
) where

data ArvoreBinaria elemento = NULL
		| No elemento ( ArvoreBinaria elemento )( ArvoreBinaria elemento )
