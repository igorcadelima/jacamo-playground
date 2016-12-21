// Agent believer in project hellobdi

/* Initial beliefs and rules */
sincere(alice).

/* Initial goals */

/* Plans */
+happy(bob)[source(X)] : sincere(X)[source(self)] <- !say(hello).
+!say(X) : not today(monday) <- .print(X); .wait(500); !say(X).

{ include("$jacamoJar/templates/common-cartago.asl") }