// Agent hello in project helloworld

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//+!start : message(X) <- printMsg(X).
+!start : message(X)
   <- for ( focused(Wsp,gui,ArtId) & not(Wsp == jacamo) ) {
	      printMsg(X)[artifact_id(ArtId)]
      }.

// Scheme and artefact should have the same name      
+!print_h[scheme(A)]    : focused(jacamo,A,ArtId) <- printMsg("H")[artifact_id(ArtId)]; .wait(700).
+!print_e[scheme(A)]    : focused(jacamo,A,ArtId) <- printMsg("e")[artifact_id(ArtId)]; .wait(700).
+!print_l1[scheme(A)]   : focused(jacamo,A,ArtId) <- printMsg("l")[artifact_id(ArtId)]; .wait(700).
+!print_l2[scheme(A)]   : focused(jacamo,A,ArtId) <- printMsg("l")[artifact_id(ArtId)]; .wait(700).
+!print_l3[scheme(A)]   : focused(jacamo,A,ArtId) <- printMsg("l")[artifact_id(ArtId)]; .wait(700).
+!print_spc[scheme(A)]  : focused(jacamo,A,ArtId) <- printMsg(" ")[artifact_id(ArtId)]; .wait(700).
+!print_w[scheme(A)]    : focused(jacamo,A,ArtId) <- printMsg("W")[artifact_id(ArtId)]; .wait(700).
+!print_o1[scheme(A)]   : focused(jacamo,A,ArtId) <- printMsg("o")[artifact_id(ArtId)]; .wait(700).
+!print_o2[scheme(A)]   : focused(jacamo,A,ArtId) <- printMsg("o")[artifact_id(ArtId)]; .wait(700).
+!print_r[scheme(A)]    : focused(jacamo,A,ArtId) <- printMsg("r")[artifact_id(ArtId)]; .wait(700).
+!print_d[scheme(A)]    : focused(jacamo,A,ArtId) <- printMsg("d")[artifact_id(ArtId)]; .wait(700).
+!print_excl[scheme(A)] : focused(jacamo,A,ArtId) <- printMsg("!")[artifact_id(ArtId)]; .wait(700).

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have a agent that always complies with its organization  
{ include("$jacamoJar/templates/org-obedient.asl") }
