// Chicken List Page
page 50121 "Chicken List"
{
    PageType = List;
    SourceTable = Chicken;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Chicken List';
    CardPageID = "Chicken Card";
    Editable= false;


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'the chicken No.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Description of the chicken.';
                }
                field("Chicken Type Code"; Rec."Chicken Type Description")
                {
                    ToolTip = 'Type of chicken.';
                }
                field("Egg Produced"; Rec."Number of Egg Produced")
                {
                    ToolTip = 'Number of Egg Produced';
                }
            }
        }
    }
}



