
/* formula 1 */
strategy MinCost = minE (D/1000) [<=120] {} -> {rVelocityEgo, rVelocityFront, rDistance}: <> time >= 120

/* formula 2 */
saveStrategy("%resultsdir%/MinCost.strategy.json", MinCost)

/* formula 3 */
E[<=120;1000] (max: D/1000)                          under MinCost

/* formula 4 */
E[<=120;1000] (max:(distance <= 0))                 under MinCost

/* formula 5 */
E[<=120;2] (max: interventions)                     under MinCost

