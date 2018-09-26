>       Caml Light version 0.82

# *** Quelques fonctions sur les nombres - : unit = ()
#test : float list = [42.45; -42.45; 5.0; -5.0; -0.5; 0.5]
#troncature : float -> int = <fun>
#test_troncature : int list = [42; -42; 5; -5; 0; 0]
#decimales : float -> float = <fun>
#test_decimales : float list = [0.45; 0.45; 0.0; 0.0; 0.5; 0.5]
#test2 : float list =
 [1.0; -1.0; 0.0; -5.02; -2.5; -0.5; 3.5; -5.52; -2.4; 0.4; -5.6]
#partie_entiere : float -> int = <fun>
#test2_partie_entiere : int list = [1; -1; 0; -6; -3; -1; 3; -6; -3; 0; -6]
#plus_proche_entier : float -> int = <fun>
#test2_plus_proche_entier : int list = [1; -1; 0; -5; -2; 0; 4; -6; -2; 0; -6]
#arrondi : float -> float = <fun>
#test3 : float list =
 [52.6543; 52.6; -52.6543; -52.6; 1.0; -0.212; 1.2; 222.2222]
#test3_arrondi : float list =
 [52.65; 52.6; -52.65; -52.6; 1.0; -0.21; 1.2; 222.22]
#