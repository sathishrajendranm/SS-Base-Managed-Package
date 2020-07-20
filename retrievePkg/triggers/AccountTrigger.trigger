trigger AccountTrigger on Account (before delete) {
    if(Trigger.isbefore){
        if(Trigger.isdelete){
            AccountTriggerHandler.delcalc(Trigger.old);
         }
    }
}