include "nombres.ml" ;;

let francs_en_euros =
  let taux_de_change = 6.55957 in
  fun francs ->
    let r = francs /. taux_de_change in
    arrondi r ;;


let t = 6.55957 ;;
let test = [1.; t*.3.5; 10.; 0.] ;;
let test_francs_en_euros = map francs_en_euros test ;;


