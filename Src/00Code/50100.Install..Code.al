/// <summary>
/// Codeunit Installation (ID 50100).
/// </summary>
codeunit 50100 Installation
{
    SubType = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes;
    end;

  

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record "ChickenType";
    begin
        if not ChickenType.IsEmpty then
            exit;
        InsertChickenType('CHKTYPRED', 'Chicken Type Red');
        InsertChickenType('CHKTYPYEL', 'Chicken Type Yellow');
        InsertChickenType('CHKTYPWIT', 'Chicken Type White');

    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20];
        ChickenTypeDescription: Text[50])
    var
        ChickenType: Record "ChickenType";
    begin
        clear(ChickenType);
        ChickenType.Code := ChickenTypeCode;
        ChickenType.Description := ChickenTypeDescription;
        ChickenType.Insert(true)
    end;
}