# Master's Thesis Text

## Zadání

C-- je nízkoúrovňový programovací jazyk používaný jako částečně přenositelný backend pro jiné překladače, především pro ghc. Syntaxe C--, odvozená z jazyka C, je pro programátory čitelnější než reprezentace v assembleru nebo LLVM, navíc umožňuje výrazně flexibilnější specifikace flow control a datových struktur.

Cílem práce je rozšířit C-- o generické programování implementované parametrickým polymorfismem s typovými třídami. Student naváže na svou bakalářskou práci, která ukázala užitečnost kombinace imperativního jazyka s Hindley-Milnerovým typovým systémem. Hlavní náplní práce budou komplexnější vlastnosti typového systému potřebné pro podporu záznamových typů, automatické zprávy zdrojů podobné RAII, a uživatelsky specifikovatelné sémantiky konstant. Zdrojový kód v rozšířeném C-- bude kompilovaný do vhodně zvolené nižší reprezentace, např. LLVM.

Výsledek by měl zjednodušit implementaci specifického nízkoúrovňového softwaru. Schopnosti kompilátoru budou zhodnoceny pomocí demonstračních programů, především porovnáním s podobně zacílenými jazyky.

## Literatura

Sulzmann, M., Müller, M. and Zenger, C., 1999. Hindley/Milner style type systems in constraint form. Res. Rep. ACRC-99-009, University of South Australia, School of Computer and Information Science.

Heeren, B.J., Hage, J. and Swierstra, S.D., 2002. Generalizing Hindley-Milner type inference algorithms.

Vytiniotis, D., Jones, S.P., Schrijvers, T. and Sulzmann, M., 2011. OutsideIn(X): Modular type inference with local assumptions. Journal of functional programming, 21(4-5), pp.333-412.

Jones, S.P., Ramsey, N. and Reig, F., 1999, September. C--: A portable assembly language that supports garbage collection. In International Conference on Principles and Practice of Declarative Programming (pp. 1-28). Springer, Berlin, Heidelberg.

Lattner, C. and Adve, V., 2004, March. LLVM: A compilation framework for lifelong program analysis & transformation. In International Symposium on Code Generation and Optimization, 2004. CGO 2004. (pp. 75-86). IEEE.

Abelson, H. and Sussman, G.J., 1996. Structure and interpretation of computer programs (p. 688). The MIT Press.

Jones, S.P. and Marlow, S., 2002. Secrets of the glasgow haskell compiler inliner. Journal of Functional Programming, 12
