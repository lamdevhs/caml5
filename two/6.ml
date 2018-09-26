
let test = [(1,2,1); (1, 1, 1); (1,1,2); (2,1,1)] ;;

let eq3 = fun (a,b,c) ->
  a = b & b = c
;;

let test_eq3 = map eq3 test ;;

(* true ssi a = b and not a = c *)
let f2 = fun (a,b,c) ->
  a = b & not b = c
;;

let test_f2 = map f2 test ;;

let test2 = [(1,1,3); (1,2,3); (1,3,1); (4,2,3)] ;;


(* true ssi a < b < c *)
let f3 = fun (a,b,c) ->
  a < b & b < c
;;

let test2_f3 = map f3 test2 ;;

(* true ssi au moins deux elements parmi {a,b,c} sont egaux *)
let f4 = fun (a,b,c) ->
  a = b or a = c or b = c
;;

let test_f4 = map f4 test ;;
let test2_f4 = map f4 test2 ;;

(* true ssi exactement deux elements parmi {a,b,c} sont egaux
 * cad ssi f2 (a,b,c) ou f2(a,c,b) ou f2 (b,c,a) *)
let f5 = fun (a,b,c) ->
  f2 (a,b,c) or f2 (a,c,b) or f2 (b,c,a)
;;

let test_f5 = map f5 test ;;
let test2_f5 = map f5 test2 ;;

(* true ssi au plus deux elements parmi {a,b,c} sont egaux
 * cad ssi au moins deux elements parmi {a,b,c} sont different
 * cad ssi a != b or a != c or b != c
 * ssi not eq3 (a,b,c) *)
let f6 = fun (a,b,c) ->
  not eq3 (a,b,c)
;;

let test_f6 = map f6 test ;;
let test2_f6 = map f6 test2 ;;
