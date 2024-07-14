df = read.csv("insurance_trial_20cols.csv")

attach(df)

model = glm(Fraud~. - ClaimInvolvedCovers - DamageImportance - NumberOfBodilyInjuries - PolicyWasSubscribedOnInternet - FirstPartyVehicleType - PolicyholderOccupation - FirstPartyVehicleNumber, family = binomial(link = "logit"), data = df)

summary(model)
