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
    actions
    {
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                Caption = 'Insert Default Egg Types';
                ToolTip = 'Insert Default Egg Types';
                Promoted = true;
                PromotedIsBig = true;
                Image = Insert;

                trigger OnAction()
                var
                    EggType: Record EggType;
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table.';
                begin
                    clear(EggType);
                    if not EggType.IsEmpty then
                        Error(EggTypeNotEmptyErr);
                    EggType.InsertEggType('EGGTYPSMALL', 'Small');
                    EggType.InsertEggType('EGGTYPNORM', 'Normal');
                    EggType.InsertEggType('EGGTYPLARGE', 'Largr');
                end;
            }
        }
    }
}