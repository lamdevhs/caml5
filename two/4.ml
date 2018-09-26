include "nombres.ml" ;;

let reel = fun (a, b, d) ->
  let m = max (a,b)
  and dec = decimales d
  in
  let maxf = float_of_int m
  in
  maxf +. dec
;;

let test = [
  (4,5, -4.123);
  (7,5,4.123);
  (1,-4, 3.42);
  (0, 6, -2.1)
] ;;
let test_reel = map reel test ;;
