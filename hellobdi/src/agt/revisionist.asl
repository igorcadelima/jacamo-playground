// Agent revisionist in project hellobdi

/* Initial beliefs and rules */
sincere(alice_to_revisionist).

/* Initial goals */
!create_calendar.

/* Plans */
+!create_calendar <- makeArtifact("Revisionist","Calendar",[],AId); focus(AId).

+happy(H)[source(A)] : sincere(A)[source(self)] & .my_name(H) <- !say(hello(A)).
+happy(H)            : not .my_name(H)                        <- !say(i_envy(H)).
-happy(H)[source(A)]
   <- .drop_intention(say(hello(A)));
   	  .drop_intention(say(i_envy(H))).

+!say(X) : today(friday)     <- .print(X,"!!!!!"); .wait(math.random(400)+100); !say(X).
+!say(X) : not today(monday) <- .print(X);         .wait(math.random(400)+100); !say(X).
+!say(X)					 <- !say(X).