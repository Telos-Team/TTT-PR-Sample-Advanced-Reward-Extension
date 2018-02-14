tableextension 50110 "TTT CustomerRewardExt" extends Customer
{
    fields
    {
        field(50100;"TTT RewardPoints";Integer)
        {
            Caption = 'Reward Points';
            MinValue = 0;
        }
    }
}