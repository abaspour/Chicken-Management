page 50101 "Egg Production Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Egg Production Header";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ToolTip='Provide Document No.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ToolTip='Provide Document Date';
                }
            }
            part(Lines;"Egg Production Subpage")
            {
                SubPageLink="Document No."=field("No.");
                UpdatePropagation=Both;
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