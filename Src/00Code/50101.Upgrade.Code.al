codeunit 50101 MyCodeunit
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        MyInfo: ModuleInfo;

    begin
        // if CompanyName = 'CRONUS Canada, Inc.' then
        if (NavApp.GetCurrentModuleInfo(MyInfo)) then
            if MyInfo.DataVersion.Major = 1 Then begin
                //       if MyInfo.DataVersion= Version.Create(1,0,0,1) then
                ChangeChickenType('CHKTYPRED', 'Type 01', 'Type 01');
                ChangeChickenType('CHKTYPYEL', 'Type 02', 'Type 02');
                ChangeChickenType('CHKTYPWIT', 'Type 03', 'Type 03');
            end else
                Message('Upgrade not executed. Major version is not 1');



    end;

    local procedure ChangeChickenType(OldChickenTypeCode: Code[20];
                                        NewChickenTypeCode: Code[20];
                                        NewChickenTypeDescription: Text[100])
    var
        ChickenType: Record "ChickenType";
    begin
        if ChickenType.Get(OldChickenTypeCode) then begin
            ChickenType.Rename(NewChickenTypeCode);
            ChickenType.Description := NewChickenTypeDescription;
            ChickenType.Modify(true);
        end;


    end;
}
