table 50100 Chicken
{
    DataClassification = ToBeClassified;
    LookupPageID = "Chicken Card";
    Caption = 'Chicken';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';

        }
        field(3; "Chicken Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            TableRelation = ChickenType;

            trigger OnValidate()
            var
                myInt: Integer;
            begin
                CalcFields("Chicken Type Description");
            end;

        }
        field(9; "Picture"; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }
        field(10; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Date Modified';
            Editable = false;

        }
        field(11; "Chicken Type Description"; text[100])
        {
            Caption = 'Chicken Type Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("ChickenType".Description
                                where(Code = field("Chicken Type Code")));
        }
        field(12; "Number of Egg Produced"; Decimal)
        {
            Caption = 'Number of Egg Produced';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum("Egg Production Line".Quantity
               where("Chicken No." = field("No."),
               "Egg Production Date" = field("Date Filter"),
               "Egg Type Code" = field("Egg Type Filter")
               ));
        }
        field(13; "Date Filter"; Date)
        {
            Caption = 'Date Filter of Egg Produced';
            FieldClass = FlowFilter;
        }
        field(14; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter of Egg Produced';
            FieldClass = FlowFilter;
            TableRelation = EggType;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, "Chicken Type Code") { }
        fieldgroup(Brick; Description, Picture) { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    var
        EggProductionLine: Record "Egg Production Line";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can''t detele it.', Comment = '%1 = Chicken No. ; %2 = Chicken Description';
    begin

        Clear(EggProductionLine);
        EggProductionLine.SetFilter("Chicken No.", rec."No.");
        if not EggProductionLine.IsEmpty then
            Error(ChickenHasEggsErr, rec."No.", rec.Description);
        // Save the Chicken table object


    end;

    trigger OnRename()
    begin

    end;

}