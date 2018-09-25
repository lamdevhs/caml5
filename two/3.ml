let heures = int_of_float ;;
let minutes_marchePas = fun x ->
  let h = float_of_int (heures x) in
  let m = 100. *. (x -. h) in
  (m, int_of_float m) ;;
  (*
  pour 12.42, retourne 41; pour 7.01, retourne 0
  *)

let minutes = fun x ->
  let i = int_of_float (100. *. x) in
  i mod 100 ;;

let t = 12.42 in t, heures t, minutes t, minutes_marchePas t ;;
let test = [1.; 0.; 24.39; 12.42; 7.01; 4.40] ;;
map heures test ;;
let test = [1.; 0.; 24.39; 12.42; 7.01; 4.40] ;;
map minutes test ;;

let quelle_heure_est_il =
  let il_est = "Il est" and pile = "pile"
  and midi = "midi" and minuit = "minuit"
  and heure = "heure" and space = " " and point = "."
  in
  fun f ->
    let hInt = heures f
    and mInt = minutes f
    in
    let h =
      if hInt = 12 then midi else
      if hInt = 0 then minuit else
      string_of_int hInt ^ space ^ heure
    and m =
      if mInt = 0 then pile else
      string_of_int mInt
    in
    il_est ^ space ^ h ^ space ^ m ^ point
;;

let test_quelle = [14.45; 12.0; 12.02; 0.34; 0.; 14.] ;;
map quelle_heure_est_il test_quelle ;;
