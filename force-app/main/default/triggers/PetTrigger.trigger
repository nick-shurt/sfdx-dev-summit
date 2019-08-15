trigger PetTrigger on Pet__c (before insert) {
    for (Pet__c pet : Trigger.new) {
        if (pet.Type__c == null) {
            pet.Type__c = 'Dog';
        }
    }
}