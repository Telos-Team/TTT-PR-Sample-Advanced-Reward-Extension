pageextension 50111 "TTT CustomerListRewardsExt" extends "Customer List" 
{ 
    actions 
    { 
        addfirst("&Customer") 
        { 
            action("Reward Levels") 
            { 
                ApplicationArea = All; 
                Image = CustomerRating; 
                Promoted = true; 
                PromotedCategory = Process; 
                PromotedIsBig = true; 

                trigger OnAction(); 
                begin 
                    if CustomerRewardsExtMgt.IsCustomerRewardsActivated then 
                        CustomerRewardsExtMgt.OpenRewardsLevelPage 
                    else 
                        CustomerRewardsExtMgt.OpenCustomerRewardsWizard; 
                end; 
            } 
        } 
    } 

    var 
        CustomerRewardsExtMgt: Codeunit "TTT Customer Rewards Ext. Mgt."; 
} 