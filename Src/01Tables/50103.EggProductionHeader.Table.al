table 50103 "Egg Production Header"
{
    DataClassification = ToBeClassified;
    Caption='Egg Production Header';
    DataCaptionFields="No.","Document Date";
    DrillDownPageId="Egg Production List";
    LookupPageId="Egg Production List";
    
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }

        field(2; "Document Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
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
        fieldgroup(DropDown; "No.", "Document Date")
        {
        }
    }
}
