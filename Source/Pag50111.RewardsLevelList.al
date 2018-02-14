page 50111 "TTT RewardsLevelList"
{
    PageType = List;
    SourceTable = "TTT Reward Level";
    Caption = 'Rewards Level List';
    SourceTableView = sorting("Minimum Reward Points") order(ascending);

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Level; Level)
                {
                    ApplicationArea = All;
                }
                field("Minimum Reward Points";"Minimum Reward Points")  
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
        }
    }

    trigger OnOpenPage();
    begin
        if(not CustomerRewardsExtMgt.IsCustomerRewardsActivated) then 
            Error(NotActivatedTxt); 
    end;

    var
        CustomerRewardsExtMgt: Codeunit "TTT Customer Rewards Ext. Mgt.";
        NotActivatedTxt: label 'Customer Rewards is not activated!';
}