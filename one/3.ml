print_string " *3* Definitions globales, locales et issues de l'agriculture biologique " ;;

print_string "\n\n ** Evolution " ;;
print_string "/// env: initial ///" ;;
let x = 2 ;; print_string "/// env: x,2/initial ///" ;;
let y = x + 3 ;; print_string "/// env: y,5/x,2/initial ///" ;;
let x = y + 5 ;; print_string "/// env: x,10/y,5/x,2/initial ///" ;;
let z = y*2 in
  x + z + y*y ;; print_string "/// env: unchanged: local z ///" ;;
let x = 3 in
  x*x + 2*x*y + 4*y ;; print_string "/// env: unchanged: local x, global y ///" ;;
let x = 1 in
  x = 2*x ;; print_string "/// env: unchanged; boolean equal, local x ///" ;;
let x = 0 in
  x = 2*x ;; print_string "/// env: unchanged; still local x ///" ;;


print_string "\n\n ** Def locales emboitees " ;;
let x = 5 in
  let prod = x*x in
    prod + prod * prod ;; print_string "/// env unchanged; evals to 650 ///" ;;

let resultat = let x = 5 in
  let prod = x*x in
    prod + prod * prod ;; print_string "/// env = resultat,650/previous_env ///" ;;

let val = let x = 3 and y = 4 in
  let x = x + y and y = x - y in
    x*x + y*y ;;
    print_string "/// env = val,58/resultat,650/previous_env ///" ;;

print_string "\n\n ** Expressions conditionnelles " ;;
if 1 = 1
  then "salut" else "au revoir" ;;
let x = 3 in
  if x < 0 then x else x * x ;;
if 5 > 0 then 1 else "erreur" ;; (* type error: string <> int *)
let x = 3 and y = 3 in
  let y = y*x in
    if y mod 2 = 0 then "pair" else "impair" ;; (* impair *)

