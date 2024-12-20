Require Export Assignment11_03.

(* problem #04: 10 points *)

(** **** Exercise: 1 star, optional (succ_hastype_nat__hastype_nat)  *)
Example succ_hastype_nat__hastype_nat : forall t,
  |- tsucc t \in TNat ->
  |- t \in TNat.  
Proof.
  intros.
  inversion H.
  subst.
  apply H1.
Qed.

(*-- Check --*)
Check succ_hastype_nat__hastype_nat : forall t,
  |- tsucc t \in TNat ->
  |- t \in TNat.  

