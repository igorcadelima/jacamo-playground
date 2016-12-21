// Agent alice_to_revisionist in project hellobdi

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start
   <- .send(bob_revisionist,tell,happy(bob_revisionist));
      .send(bob_revisionist,tell,happy(alice));    			.wait(2000);
      .send(bob_revisionist,tell,happy(morgana));  			.wait(2000);
      .send(bob_revisionist,untell,happy(bob_revisionist));	.wait(1000);
      .send(bob_revisionist,untell,happy(alice)).