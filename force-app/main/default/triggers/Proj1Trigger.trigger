trigger Proj1Trigger on Case (before insert) {

    switch on Trigger.operationType{
        when BEFORE_INSERT{
            Proj1ApexClass.CaseVerify(Trigger.new);
        }
    }
}