pageextension 50110 "TTT CustomerCardRewardExt" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(RewardLevel;RewardLevel)
            {
                ApplicationArea = All;
                Caption = 'Reward Level';
                Description = 'Reward Level of the customer';
                Editable = false;
            }
            field("TTT RewardPoints";"TTT RewardPoints")
            {
                ApplicationArea = All;
                Description = 'Reward points accrued by the customer';
                Editable = false;
            }
        }
    }
    
    trigger OnAfterGetRecord(); 
    var 
        CustomerRewardsMgtExt: Codeunit "Customer Rewards Ext. Mgt."; 
    begin 
        // Get the reward level associated with reward points 
        RewardLevel := CustomerRewardsMgtExt.GetRewardLevel(RewardPoints); 
    end; 

    var 
        RewardLevel: Text; 
}