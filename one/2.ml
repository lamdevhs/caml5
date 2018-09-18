print_string " * Conversion de typos " ;;
let trunk = int_of_float ;;
let fourIsFourTooMany = trunk 4. ;;
let discount = trunk 4.25 ;;
let closerToZero = trunk (-4.25) ;;
let notReallyBetterThanNothing = trunk (4.25e-34) ;;

let intext = string_of_int ;;
let damnCold = intext (-235) ;;
let forSale = intext 5500 ;;
let floatingPen = string_of_float ;;
let stillForSale = floatingPen 55e2 ;;
let muchCheaper = floatingPen (-55e2) ;;

let interpret = int_of_string ;;
let strangePattern = interpret "345" ;;
let wontWork = interpret "34.5" ;;

let readAtSea = float_of_string ;;
let onceMoreWithFeelings = readAtSea "34.5" ;;
let preciselyApproximated = readAtSea "999999999999999999999999.9" ;;
