// Agent alice_to_lazy in project hellobdi

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start
   <- .send(bob_lazy,tell,happy(bob_lazy));
      .send(bob_lazy,tell,happy(alice));    	.wait(2000);
      .send(bob_lazy,tell,happy(morgana));  	.wait(2000);
      .send(bob_lazy,untell,happy(bob_lazy));	.wait(1000);
      .send(bob_revisionist,untell,happy(alice)).
