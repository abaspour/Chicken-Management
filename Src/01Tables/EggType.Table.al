table 50102 EggType
{
    DataClassification = ToBeClassified;
    Caption = 'Egg Type';
    
    fields
    {
        field(1;"Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            NotBlank = true;
        }
        field(2;"Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption='Egg Type Description';           
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