Require Export Assignment05_15.

(* problem #16: 10 points *)

Lemma one: forall n, n + 0 = n.
Proof.
  intros.
  induction n.
  simpl.
  reflexivity.
  simpl.
  rewrite IHn.
  reflexivity.
Qed.



(** 2 stars (b_times2)  *)
Theorem b_times2: forall n, beautiful n -> beautiful (2*n).
Proof.
  intros.
  constructor 4.
  apply H.
  rewrite one.
  apply H.
Qed.
(** [] *)



