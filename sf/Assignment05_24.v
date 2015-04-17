Require Export Assignment05_23.

(* problem #24: 10 points *)







(** 3 stars, advanced (ev_ev__ev)  *)
(** Finding the appropriate thing to do induction on is a
    bit tricky here: *)

Theorem ev_ev__ev : forall n m,
  ev (n+m) -> ev n -> ev m.
Proof.
  intros.
  induction H0.
  simpl in H.
  apply H.
  simpl in H.
  apply IHev.
  inversion H.
  apply pf_evn.
Qed.
(** [] *)


