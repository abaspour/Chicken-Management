table 50101 ChickenType
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Chicken Types";
    LookupPageId = "Chicken Types";
    Caption = 'Chicken Type';
    
    fields
    {
        field(1;"Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            NotBlank = true;
        }
        field(2;"Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption='Chicken Type Description';           
        } 
    }
    
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    { 
       
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
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}