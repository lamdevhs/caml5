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

