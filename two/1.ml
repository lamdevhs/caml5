print_string " *** Quelques fonctions sur les nombres " ;;

let troncature = int_of_float ;;
let troncature_42Dot45 = troncature 42.45 ;;
let troncature_min42Dot45 = troncature (-42.45) ;;

let absfloat = fun x -> if x >= 0. then x else -.x ;;
let decimales = fun x -> absfloat (x -. float_of_int (troncature x)) ;; 
decimales (-42.45) ;;
decimales (42.45) ;;
decimales (5.) ;;
decimales (-5.) ;;
decimales (-0.5) ;;
decimales (0.5) ;;

let floor = fun x ->
  let trunc = troncature x in
  if x = float_of_int trunc or x >= 0. then trunc
  else trunc - 1 ;;

map floor [1.; -1.; 0.; -5.02; -2.5; -0.5; 3.5] ;;


let nearest = fun x ->
  let y = x  +. 0.5 in
  floor y ;;

map nearest [-5.52; 1.; -1.; 0.; -2.4; -0.4; 3.5; -5.6] ;;

let round = fun x ->
  let m = x *. 100. in
  let n = float_of_int (nearest m) in
  n /. 100. ;;
  
round 52.6543 ;;
round 52.6 ;;
round (-52.6543) ;;
round (-52.6) ;;



