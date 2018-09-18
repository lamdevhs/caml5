print_string " * Expressions élémentaires et types de base " ;;

print_string "\n\n ** Entiers et réels " ;;
let err = 1.2 + 1 ;; (* 1.2 is not an int *)
let err = 1.2 + 2.3 ;; (* + is not a float -> float -> t *)
let oneDotEight = -2E-1 +. 2. ;;
let fourOnThreeFive = (sqrt 4. +. 2.) /. 3.5 ;;
let minSix = -2 * 3 ;;
let seven = 2.1 +. 4.9 ;;
let three = sqrt 9. ;;
let three = 10 / 3 ;;
let one = 10 mod 3 ;;
let seventeen = 2 + 3 * 5 ;;
let minTwelve = -(5 + 1) * (-2 + 5) + 2*3 ;;

print_string "\n\n ** Booléens " ;;
let oneIsTwo = 1 = 2 ;;
let fourBeforeFive = 4 < 5 ;;
let fourTwoBeforeFourSeven = 4.2 < 4.7 ;;
let trueIsnFalse = (1 = 1) = (2 < 1) ;;
let err = true = 1 ;; (* int /= bool *)
let oneOrTheOther = true or false ;;
let truthIsTrulyTrue = true or false = (1 = 1) & (4 < 5) ;;
let commutativeButDisorganized = (1+2 = 2+1)  &  4>5 ;;
let tryAgainWithoutTheLittleWheels = 1+2 = 2+1  &  4>5 ;;
let andTheOrThenCame = 1+2 = 2+1  or  4>5 ;;
let isTrueMoreThanFour = 1+2 = 2+1  >  4>5 ;; (* leftwise priority *)
let trueBetterThanFalse = 1+2 = 2+1  >  (4>5) ;;
let alwaysLieBeforeConfessing = false < true ;;
let iBelieveYou = 4+1 < 6 &
        (`a` < `h` or "debut" = "fin") ;;

print_string "\n\n ** Exo precedence " ;;

let comparisonsBeforeNot = not 4 < 3 ;; (* otherwise would fail with int /= bool *)
let notBeforehAnd = true & not   (****)    true ;; (* otherwise syntax error *) 
let notBefOr = true or not   (****)    true ;; (* otherwise syntax error *) 
let truthWillOut = true or false & false ;;
        (*
        `or` prioritary, or same precedence => ... and false = false
        `and` prioritary => true or ... = true
        *)

print_string "\n\n ** Chaînes de fort caractère " ;;
let hiya = "salut" ;;
let hiAgain = "salut" ^ "à toutes et à tous" ;;
let thatsBetter = "salut" ^ " à toutes et à tous" ;;
let degreesOfFamiliarity = "salut" < "bonjour" ;;
let canYouHearMeCapitalize = "salut" < "Salut" ;;
let hey_A_aint_a = "A" < "a" ;;
let freeFromOurChains = `A` < `a` ;;
let firstAndForemost = `a` ;;
let primeNumberNumber25 = int_of_char `a` ;;
let hazeBeforeBees = `a` < `b` ;;
let littleCharThinksALotOfHimself = `a` < "bonjour" ;;
let charUpgraded = "a" < "bonjour" ;;
let meTryToGetAnotherTypeError = `a` ^ "près" ;;
let meCongratulateYouItWorked = `a` ^ "près" ;;
let twelveHasAWeakStart = "12" > "2" ;;
