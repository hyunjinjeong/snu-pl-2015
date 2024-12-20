Require Export Assignment06_02.

(* problem #03: 10 points *)

(** **** Exercise: 2 stars (dist_exists_or)  *)
(** Prove that existential quantification distributes over
    disjunction. *)

Theorem dist_exists_or : forall (X:Type) (P Q : X -> Prop),
  (exists x, P x \/ Q x) <-> (exists x, P x) \/ (exists x, Q x).
Proof.
  intros.
  split.
  intros.
  inversion H.
  inversion proof.
  left.
  exists witness.
  apply H0.
  right.
  exists witness.
  apply H0.
  intros.
  inversion H.
  inversion H0.
  exists witness.
  left.
  apply proof.
  inversion H0.
  exists witness.
  right.
  apply proof.
Qed.
(** [] *)


