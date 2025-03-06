page 50104 "Customer API"
{
    PageType = API;
    DelayedInsert = true;
    APIGroup = 'i2xIntegration';
    APIPublisher = 'openDoorTechnology1';
    APIVersion = 'v1.0';
    EntityName = 'i2xcustomer';
    EntitySetName = 'i2xcustomers';
    Extensible = false;
    SourceTable = Customer;
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(number; rec."No.")
                {
                }
                field(Id; rec.SystemId)
                {
                }
                field(Name; rec.Name)
                {
                }
                field(MyFLD; myfld)
                {
                }
            }
        }


    }

    trigger OnOpenPage()
    begin
        myfld := api.GetRecords();
    end;

 /*   trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        myfld := 'GetRecords()';

    end;
*/

 
    var
        myfld: text;
api : Codeunit Api;
}
