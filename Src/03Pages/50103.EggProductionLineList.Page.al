page 50103 "Egg Production Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Egg Production Line';
    Editable= false;
    SourceTable = "Egg Production Line";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; rec."Chicken No.")
                {
                    ToolTip='Provide Chicken No.';
                }
                field("Chicken Description";rec."Chicken Description")
                {
                    ToolTip='Chicken Description';
                }
                field("Document No."; rec."Document No.")
                {
                    ToolTip='Chicken Description';
                }
                field("Egg Production Date";Rec."Egg Production Date")
                {
                    ToolTip='Egg Production Date';
                }
                field("Egg Type Code";Rec."Egg Type Code")
                {
                    ToolTip='Egg Type Code';
                }
                field("Egg Type Description";Rec."Egg Type Description")
                {
                    ToolTip='Egg Type Description';
                }
                field(Quantity;rec.Quantity)
                {
                    ToolTip='Provide Quantity';
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