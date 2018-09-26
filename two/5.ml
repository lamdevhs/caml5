include "nombres.ml" ;;

let chiffre = fun n ->
  let rest = n mod 10
  in abs rest
;;

let test = [1; 123; 0; -123; 42] ;;
let test_chiffre = map chiffre test ;;

let echange = fun (n, p) ->
  let sn = signe n
  and sp = signe p
  and n = abs n
  and p = abs p
  in
  let cn = chiffre n 
  and cp = chiffre p
  in
  let n2 = n - cn
  and p2 = p - cp
  in
  let newN = n2 + cp
  and newP = p2 + cn
  in
  (sn*newN, sp*newP)
;;

let test2 = [
  (123,321);
  (1, 42);
  (0, -32);
  (-8, -32);
] ;;

map echange test2 ;;
