page 52251 "OT My Resources"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Item;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(OpenResource)
            {
                Caption = 'Open Resource';
                Promoted = true;
                trigger OnAction()
                var
                    ResourceText: Text;
                begin
                    ResourceText := NavApp.GetResourceAsText('LoremIpsum.txt');
                    Message(ResourceText);
                end;
            }
            action(OpenResourceWithCheck)
            {
                Caption = 'Open Resource With Check';
                Promoted = true;
                trigger OnAction()
                var
                    ResourceList: List of [Text];
                    ResourceText: Text;
                begin
                    ResourceList := NavApp.ListResources('prompts');
                    if NavApp.ListResources('prompts').Contains('prompts/LoremIpsum2.txt') then begin
                        ResourceText := NavApp.GetResourceAsText('prompts/LoremIpsum2.txt');
                        Message(ResourceText);
                    end;
                end;
            }
        }
    }
}