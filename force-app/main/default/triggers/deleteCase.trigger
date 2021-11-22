trigger deleteCase on Account (after delete) {
    switch on Trigger.operationType{
        when AFTER_DELETE{
            deleteCaseClass.deleteCaseClassMethod(trigger.oldMap);
        }
    }
}