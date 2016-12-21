// Agent mentalist in project hellobdi

/* Initial beliefs and rules */
happy(bob).

/* Initial goals */

!say(hello).

/* Plans */

+!say(X) : happy(bob) <- .print(X).