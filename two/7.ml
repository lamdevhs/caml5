
let nb_sol =
  let det = fun (a,b,c) ->
    b*.b -. 4.*.a*.c
  in
  fun (a,b,c) ->
    let d = det (a,b,c) in
    if d > 0. then 2 else
    if d = 0. then 1 else
    0
;;


(* X^2 + 2X + 1 = (X + 1)^2 -- une seule racine reelle double
 * X^2 + 1 -- les racines sont i et -i
 * X^2 + 5X + 6 = (X + 2)(X + 3) -- deux racines reelles differentes *)
let test = [(1., 2., 1.); (1., 0., 1.); (1., 5., 6.)] ;;
let test_nb_sol = map nb_sol test ;;
