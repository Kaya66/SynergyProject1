trigger accountCreatesOpportunityTrigger on Account (after insert, after update) {
    switch on Trigger.operationType{
        when AFTER_INSERT{
            createOppsFromAcc.createOppsFromAcc(trigger.new);


            // List<Opportunity> newOps = new List<Opportunity>();
            // for(Account a: trigger.new){
            //     newOps.add(new Opportunity(accountId = a.Name));
            //     }
            //     insert newOps;
            }
        }
    }