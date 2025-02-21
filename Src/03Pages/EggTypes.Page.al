// Egg Types Page
page 50123 "Egg Types"
{
    PageType = List;
    SourceTable = "EggType";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Egg Types'; 


    layout
    {
        area(content)
        {
            repeater(group)
            {
                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the egg type code.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Provides a description of the egg type.';
                }
            }
        }
    }
}