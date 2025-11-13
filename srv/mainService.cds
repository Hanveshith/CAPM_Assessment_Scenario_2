
using { ust.HanveshithReddy.Juvventhula.db as db } from '../db/datamodel';

define service mainService {
    // entity businesspartner as projection on db.master.businesspartner;
    // entity product as projection on db.master.product;
    // entity address as projection on db.master.address;
    @Capabilities : { 
        Insertable,
        Updatable,
        Deletable,
     }
    @odata.draft.enabled
    entity purchaseorder as projection on db.transaction.purchaseorder;
    entity poitems as projection on db.transaction.poitems;
}