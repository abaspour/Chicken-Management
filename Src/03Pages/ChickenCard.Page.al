// Chicken Card Page
page 50120 "Chicken Card"
{
    PageType = Card;
    SourceTable = Chicken;
    Caption = 'Chicken Card';
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Enter the chicken No.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Provides a description of the chicken.';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ToolTip = 'Specifies the type of chicken.';
                }
                field("Chicken Type Description"; rec."Chicken Type Description")
                {
                    ToolTip ='Chicken Type Description';
                } 
                field("Last Date Modified"; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Shows the last date this record was modified.';
                }
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Displays an image of the chicken.';
                }
              field("Egg Produced"; Rec."Number of Egg Produced")
                {
                    ToolTip = 'Number of Egg Produced';
                }

            }
        }
    }
}

