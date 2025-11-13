using { ust.HanveshithReddy.Juvventhula.db as db } from './mainService';

annotate db.transaction.purchaseorder with @(
    UI: {
        SelectionFields  : [
            CURRENCY_code,
            LIFECYCLE_STATUS,
            ID
        ],
        
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Lable : '{i18n>GrossAmount}',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Currency}',
                Value : CURRENCY,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LifecycleStatus}',
                Value : LIFECYCLE_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Lable : '{i18n>NetAmount}',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OverallStatus}',
                Value : OVERALL_STATUS,
            },
        ],

        FieldGroup  : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                    $Type : 'UI.DataField',
                    Label : 'ID',
                    Value : ID,
                },
                {
                    $Type : 'UI.DataField',
                    Label : '{i18n>CurrencyCode}',
                    Value : CURRENCY_code,
                },
                {
                    $Type : 'UI.DataField',
                    Label : '{i18n>NetAmount}',
                    Value : NET_AMOUNT,
                },
                {
                    $Type : 'UI.DataField',
                    Label : '{i18n>OverallStatus}',
                    Value : OVERALL_STATUS,
                },
            ],
        },

        Facets  : [
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Field Group/PurchaseOrders',
                Target : '@UI.FieldGroup',
            },
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Line Item',
                Target : 'Items/@UI.LineItem',
            },

        ],
    }
);

annotate db.transaction.poitems with @(
    UI: {
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : CURRENCY_code,
            },
        ],
        Identification  : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : CURRENCY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : TAX_AMOUNT,
            },
        ],

        Facets  : [
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Items/Identification',
                Target : '@UI.Identification',
            },
        ],
    }
);
