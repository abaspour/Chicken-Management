namespace ChickenManagement.ChickenManagement;

permissionset 50101 "Chicken Managment "
{
    Assignable = true;
    Caption = 'Chicken Managment ', MaxLength = 30;
    Permissions =
        table "Egg Production Line" = X,
        tabledata "Egg Production Line" = RMID,
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table EggType = X,
        tabledata EggType = RMID,
        table ChickenType = X,
        tabledata ChickenType = RMID,
        table Chicken = X,
        tabledata Chicken = RMID,
        page "Egg Types" = X,
        page "Chicken Managment RoleCenter" = X,
        page "Chicken Types" = X,
        page "Chicken List" = X,
        page "Chicken Card" = X,
        page "Egg Production Line List" = X,
        page "Egg Production List" = X,
        page "Egg Production Document" = X,
        page "Egg Production Subpage" = X,
        page "Customer API" = X,
        codeunit Installation = X;
}
