Require Export Assignment11_05.

(* problem #06: 10 points *)

(** **** Exercise: 2 stars (finish_preservation)  *)
(** Complete the formal proof of the [preservation] property.  (Again,
    make sure you understand the informal proof fragment in the
    following exercise first.) *)

Theorem preservation : forall t t' T,
  |- t \in T ->
  t ==> t' ->
  |- t' \in T.
Proof with auto.
  intros t t' T HT HE.
  generalize dependent t'.
  has_type_cases (induction HT) Case; 
         (* every case needs to introduce a couple of things *)
         intros t' HE; 
         (* and we can deal with several impossible
            cases all at once *)
         try (solve by inversion).
  Case "T_If". inversion HE; subst; clear HE.
    SCase "ST_IFTrue". assumption.
    SCase "ST_IfFalse". assumption.
    SCase "ST_If". apply T_If; try assumption.
      apply IHHT1; assumption.
      inversion HE; subst.
      constructor.
      apply IHHT in H0.
      apply H0.
  Case "T_Pred".
    inversion HE; subst.
    apply HT.
    apply succ_hastype_nat__hastype_nat in HT.
    apply HT.
    constructor. apply IHHT. apply H0.
    inversion HE; subst.
    constructor. constructor.
  Case "T_Iszero".
    constructor.
    apply IHHT.
    apply H0.
Qed.

(*-- Check --*)
Check preservation : forall t t' T,
  |- t \in T ->
  t ==> t' ->
  |- t' \in T.

