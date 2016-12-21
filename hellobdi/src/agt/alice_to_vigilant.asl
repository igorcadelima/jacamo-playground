// Agent alice_to_vigilant in project hellobdi

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start
   <- .send(bob_vigilant,tell,happy(bob_vigilant));
      .send(bob_vigilant,tell,happy(alice));
      .wait(2000);
      .send(bob_vigilant,tell,happy(morgana));
      for (.range(I, 1, 100)) {
      	.send(bob_vigilant, tell, happy(I));
      }.