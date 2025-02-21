table 50104 "Egg Production Line"
{
    DataClassification = ToBeClassified;
    Caption='Egg Production Line';
    DrillDownPageId="Egg Production Line List";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
            TableRelation = "Egg Production Header";
        }

        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';
            AutoIncrement = true;
        }

        field(3; "Chicken No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken No.';
            TableRelation=Chicken;
        }

        field(4; "Egg Production Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Production Date';
        }

        field(5; "Egg Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            TableRelation=EggType;
        }
        field(6; "Quantity"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
            DecimalPlaces=2:0;
            
        }

        field(7; "Chicken Description"; Text[100])
        {
            CalcFormula = lookup(Chicken.Description where("no."=field("Chicken No.")));
            FieldClass=FlowField;
            Editable=false;           
            Caption = 'Chicken Description';
        }
        field(8; "Egg Type Description"; Text[100])
        {
            CalcFormula = lookup(EggType.Description where("Code"=field("Egg Type Code")));
            FieldClass=FlowField;
            Editable=false;           
            Caption = 'Egg Type Description';
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Document No.", "Egg Production Date", "Quantity")
        {
        }
    }
}
