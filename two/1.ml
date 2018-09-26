print_string " *** Quelques fonctions sur les nombres " ;;

let test = [42.45; -42.45; 5.; -5.; -0.5; 0.5] ;;
(* liste de valeurs pour les tests
 * la fonction `map` prend une fonction f
 * et une liste de valeurs [x1;x2;...;xn]
 * et retourne la liste [f(x1);f(x2);...;f(xn)]
 * ce qui permet de faire pleins de tests en une
 * seule fois *)
let troncature = int_of_float ;; let test_troncature = map troncature test ;;

let decimales = fun x ->
  let trc = troncature x in
  let d = x -. float_of_int (troncature x) in
  abs_float d ;; 
let test_decimales = map decimales test ;;

let test2 = 
  [1.; -1.; 0.; -5.02; -2.5; -0.5; 3.5;
  -5.52; -2.4; 0.4; -5.6] ;;

let partie_entiere = fun x ->
  let trunc = troncature x in
  if x = float_of_int trunc or x >= 0. then trunc
  else trunc - 1 ;;
let test2_partie_entiere = map partie_entiere test2 ;;

let plus_proche_entier = fun x ->
  let y = x  +. 0.5 in (* idee vient de l'enonce *)
  partie_entiere y ;;
let test2_plus_proche_entier = map plus_proche_entier test2 ;;

let arrondi = fun x ->
  let m = x *. 100. in
  let n = float_of_int (plus_proche_entier m) in
  n /. 100. ;;

let test3 = [52.6543; 52.6; -52.6543; -52.6; 1.;
  -0.212; 1.2; 222.2222] ;;
let test3_arrondi = map arrondi test3 ;;
