Require Export Assignment05_24.

(* problem #25: 10 points *)









(** 3 stars, optional (ev_plus_plus)  *)
(** Here's an exercise that just requires applying existing lemmas.  No
    induction or even case analysis is needed, but some of the rewriting
    may be tedious. 
    Hint: You can use [plus_comm], [plus_assoc], [double_plus], [double_even], [ev_sum], [ev_ev__ev].
*)
Check plus_comm.
Check plus_assoc.
Check double_plus.
Check double_even.
Check ev_sum.
Check ev_ev__ev.

Theorem ev_plus_plus : forall n m p,
  ev (n+m) -> ev (n+p) -> ev (m+p).
Proof.
  intros.
  apply ev_sum with (n:=n+m) (m:=n+p) in H.
  replace (n + m + (n + p)) with ((n + n) + (m + p)) in H.
  apply ev_ev__ev with (n:=n+n) in H.
  apply H.
  rewrite <- double_plus.
  apply double_even.
  rewrite <- plus_assoc.
  replace (n + (m + p)) with (m + (n + p)).
  rewrite <- plus_assoc.
  reflexivity.
  rewrite plus_assoc.
  rewrite plus_swap.
  rewrite plus_assoc.
  reflexivity.
  apply H0.
Qed.
(** [] *)


