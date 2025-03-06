page 50102 "Egg Production List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable=false;
    SourceTable = "Egg Production Header";
    CardPageId="Egg Production Document";    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip='Document No.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip='Document Date';
                }
            }
        
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}