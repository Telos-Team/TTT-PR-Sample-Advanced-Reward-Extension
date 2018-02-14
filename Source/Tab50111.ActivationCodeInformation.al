table 50111 "TTT ActivationCodeInformation"
{
    Caption = 'Activation Code Information';

    fields
    {
        field(1;"Activation Code";Text[14])
        {
            Description = 'Activation code used to activate Customer Rewards';
            NotBlank = true;
        }
        field(2;"Date Activated";Date)
        {
            Description = 'Date Customer Rewards was activated';
            NotBlank = true;
        }
        field(3;"Expiration Date";Date)
        {
            Description = 'Date Customer Rewards activation expires';
        }
    }

    keys
    {
        key(PK;"Activation Code")
        {
            Clustered = true;
        }
    }
}