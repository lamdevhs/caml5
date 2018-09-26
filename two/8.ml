print_string "partie A" ;;
let x = 3 ;;
let y = 4 ;;
let f = fun x -> 3*x + y*2 ;;
let x = 2 in y = x + 1 ;;
f 4 ;;
f x ;;

print_string "partie B" ;;
let f = fun a -> let b = 2 in a * b ;;
let b = 3 and x = 2 ;;
f(x) ;;
f(b) ;;

print_string "partie C" ;;
let a = 2 ;;
let b = 12 in 2*b + 4 ;;
let f = fun x -> 2*x + a ;;
f(a) ;;

(*
	>       Caml Light version 0.75

	#partie A- : unit = ()
E0 = []
	#x : int = 3
E1 = [x,3]
	#y : int = 4
E2 = [y,4;   x,3]
	#f : int -> int = <fun>
E3 = [f, <x, 3*x + y*2, [y,4]>;   y,4;   x,3]
	#- : bool = false
E4 = E3
	#- : int = 20
E5 = E4
	#- : int = 17
	#partie B- : unit = ()
	#f : int -> int = <fun>
	#b : int = 3
	x : int = 2
	#- : int = 4
	#- : int = 6
	#partie C- : unit = ()
	#a : int = 2
	#- : int = 28
	#f : int -> int = <fun>
	#- : int = 6
*)

