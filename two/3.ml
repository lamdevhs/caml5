let heures = int_of_float ;;

(* premiere tentative a ete infructueuse *)
let minutes_marchePas = fun x ->
  let h = float_of_int (heures x) in
  let d = x -. h in (* decimales uniquement *)
  let m = 100. *. d in
  int_of_float m
;;
  (*
  minutes_marchePas 12.42 = 41 ;; //au lieu de 42
  minutes_marchePas 7.01 = 0 ;;  //au lieu de 1
  clairement c'est un probleme de perte de precision du aux
  flottants :(
  *)

(* cette version fonctionne: transforme en entier 12.42 --> 1242
 * puis utilise le modulo 100 pour recuperer 42 *)
let minutes = fun x ->
  let i = int_of_float (100. *. x) in
  i mod 100
;;

let test = [1.; 0.; 24.39; 12.42; 7.01; 4.40] ;;
(* `map` applique une fonction a tous les elements d'une liste:
 * ca rend les tests plus pratiques: *)
let test_heures = map heures test ;;
let test_minutes = map minutes test ;;

(* test pour voir que minutes_marchePas ne marche effectivement
 * pas, et le comparer a `minutes` *)
let test_echec =
  let t = 12.42 in
  (t, heures t, minutes t, minutes_marchePas t)
;;

let quelle_heure_est_il =
  (* valeurs statiques/constantes enregistrees dans la fermeture
   * de la fonction: *)
  let il_est = "Il est" and pile = "pile"
  and midi = "midi" and minuit = "minuit"
  and heure = "heure" and space = " " and point = "."
  in
  fun f ->
    (* debut du corps de quelle_heure_est_il *)
    (* definitions locales: hInt, mInt, h, m *)
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
    (* valeur final de retour: *)
    il_est ^ space ^ h ^ space ^ m ^ point
;;

let test2 = [14.45; 12.0; 12.02; 0.34; 0.; 14.] ;;
let test2_quelleHeure = map quelle_heure_est_il test2 ;;

(* Sortie de l'interpreteur:
	>       Caml Light version 0.82

	#heures : float -> int = <fun>
	#minutes_marchePas : float -> int = <fun>
	#minutes : float -> int = <fun>
	#test : float list = [1.0; 0.0; 24.39; 12.42; 7.01; 4.4]
	#test_heures : int list = [1; 0; 24; 12; 7; 4]
	#test_minutes : int list = [0; 0; 39; 42; 1; 40]
	#test_echec : float * int * int * int = 12.42, 12, 42, 41
	#quelle_heure_est_il : float -> string = <fun>
	#test2 : float list = [14.45; 12.0; 12.02; 0.34; 0.0; 14.0]
	#test2_quelleHeure : string list =
	 ["Il est 14 heure 45."; "Il est midi pile."; "Il est midi 2.";
	  "Il est minuit 34."; "Il est minuit pile."; "Il est 14 heure pile."]
	#
*)
