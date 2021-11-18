trigger Proj1TriggerAfter on Account (after insert, after update, after delete) {
    switch on Trigger.operationType{
        when AFTER_DELETE{
            Proj1AfterClass.Proj1AfterClass(trigger.old);
        }
    }
}

