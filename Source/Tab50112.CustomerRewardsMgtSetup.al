table 50112 "TTT CustomerRewardsMgtSetup"
{
    Caption = 'Customer Rewards Mgt. Setup';

    fields
    {
        field(1;"Primary Key";Code[10])
        {
        }
        field(2;"Customer Rewards Ext.Mgt. Codeunit";Integer)
        {
            TableRelation = "CodeUnit Metadata".ID;
        }
    }

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
}