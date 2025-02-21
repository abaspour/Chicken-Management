// Chicken Types Page
page 50122 "Chicken Types"
{
    PageType = List;
    SourceTable = "ChickenType";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Chicken Types';

   

    layout
    {
        area(content)
        {
            repeater(group)
            {
                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the chicken type code.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Provides a description of the chicken type.';
                }
            }
        }
    }
}
