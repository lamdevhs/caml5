(* fonctions utilitaires sur les nombres *)

let troncature = int_of_float ;;
let decimales = fun x ->
  abs_float (x -. float_of_int (troncature x)) ;; 
let floor = fun x ->
  let trunc = troncature x in
  if x = float_of_int trunc or x >= 0. then trunc
  else trunc - 1 ;;

let nearest = fun x ->
  let y = x  +. 0.5 in
  floor y ;;
let arrondi = fun x ->
  let m = x *. 100. in
  let n = float_of_int (nearest m) in
  n /. 100. ;;

let max = fun (a,b) -> if a > b then a else b ;;

let signe = fun x -> if x < 0 then -1 else 1 ;;
