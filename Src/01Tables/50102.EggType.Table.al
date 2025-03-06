table 50102 EggType
{
    DataClassification = ToBeClassified;
    Caption = 'Egg Type';

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            NotBlank = true;
        }
        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Description';
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

    procedure InsertEggType(EggTypeCode: Code[20]; EggTypeDescription: Text[50])
    var
        EggType: Record "EggType";
    begin
        Clear(EggType);
        EggType.Code := EggTypeCode;
        EggType.Description := EggTypeDescription;
        EggType.Insert(true);
    end;
}