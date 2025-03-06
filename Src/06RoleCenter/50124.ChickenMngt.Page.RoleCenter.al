page 50125 "Chicken Managment RoleCenter"
{
    PageType = RoleCenter;
    Caption = 'Chicken Managment';
    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor"){
                ApplicationArea=all;
            }
            part(OverdueCustomers; "Overdue Customers"){
                ApplicationArea=all;
            }
            part(O365Activities; "O365 Activities"){
                ApplicationArea=all;
            }
        }
    }
    
    actions
    {
        area(Creation)
        {
            // action(ActionBarAction)
            // {
            //     RunObject = Page ObjectName; 
            //     ApplicationArea=all;
            // }
        }
        area(Sections)
        {
            group(MasterData)
            {
                Caption = ' Master Data';
                Image = RegisteredDocs;

                action(ChickenList)
                {
                    Caption='Chicken List';
                    RunObject = Page "Chicken List";
                    ApplicationArea=all;
                }
                action(ChickenTypes)
                {
                    Caption = 'Chicken Types';
                    RunObject = Page "Chicken Types";
                    ApplicationArea=all;
                }
            }
            group(Documents)
            {
                action(EggProduction)
                {
                    Caption='Egg Production List';
                    RunObject = Page "Egg Production List";
                    ApplicationArea=all;
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types';
                    RunObject = Page "Egg Types";
                    ApplicationArea=all;
                }
            }
        }
        area(Embedding)
        {
            action(eChickenList) 
            {
                Caption= 'Chicken List';
                RunObject = Page "Chicken List";
                ApplicationArea=all;
            }
            action(eChickenTypes) 
            {
                Caption='Chicken Types';
                RunObject = Page "Chicken Types";
                ApplicationArea=all;
            }
            action(eEggProduction)
            {
                Caption = 'Egg Production List';
                RunObject = Page "Egg Production List";
                ApplicationArea=all;
            }
            action(eEggTypes)
            {
                RunObject = Page "Egg Types";
                Caption = 'Egg Types';
                ApplicationArea=all;
            }
        }
    }
}