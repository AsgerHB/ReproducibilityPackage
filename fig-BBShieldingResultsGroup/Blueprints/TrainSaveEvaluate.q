//using  deterrence in {1000, 100, 10, 0}, train a strategy, save it, then evaluate it.
// HACK: Since this query file is only used for NoShield, I don't bother estimating the number of interventions. It will be zero, but I want to keep that number.

/* formula 1 */
strategy Deterrence1000 = minE (LearnerPlayer.fired + (number_deaths > 0)*1000 ) [<=120] {} -> {p, v}: <> time >= 120

/* formula 2 */
saveStrategy("%resultsdir%/Deterrence1000.strategy.json", Deterrence1000)

/* formula 3 */
E[<=120;%checks%] (max:LearnerPlayer.fired) under Deterrence1000

/* formula 4 */
E[<=120;%checks%] (max:(number_deaths > 0)) under Deterrence1000

/* formula 5 */
E[<=120;2] (max:0)

/* formula 6 */
strategy Deterrence100 = minE (LearnerPlayer.fired + (number_deaths > 0)*100 ) [<=120] {} -> {p, v}: <> time >= 120

/* formula 7 */
saveStrategy("%resultsdir%/Deterrence100.strategy.json", Deterrence100)

/* formula 8 */
E[<=120;%checks%] (max:LearnerPlayer.fired) under Deterrence100

/* formula 9 */
E[<=120;%checks%] (max:(number_deaths > 0)) under Deterrence100

/* formula 10 */
E[<=120;2] (max:0)

/* formula 11 */
strategy Deterrence10 = minE (LearnerPlayer.fired + (number_deaths > 0)*10 ) [<=120] {} -> {p, v}: <> time >= 120

/* formula 12 */
saveStrategy("%resultsdir%/Deterrence10.strategy.json", Deterrence10)

/* formula 13 */
E[<=120;%checks%] (max:LearnerPlayer.fired) under Deterrence10

/* formula 14 */
E[<=120;%checks%] (max:(number_deaths > 0)) under Deterrence10

/* formula 15 */
E[<=120;2] (max:0)

/* formula 16 */
strategy Deterrence0 = minE (LearnerPlayer.fired + (number_deaths > 0)*0 ) [<=120] {} -> {p, v}: <> time >= 120

/* formula 17 */
saveStrategy("%resultsdir%/Deterrence0.strategy.json", Deterrence0)

/* formula 18 */
E[<=120;%checks%] (max:LearnerPlayer.fired) under Deterrence0

/* formula 19 */
E[<=120;%checks%] (max:(number_deaths > 0)) under Deterrence0

/* formula 20 */
E[<=120;2] (max:0)


