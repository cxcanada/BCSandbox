/// ************************
/// Copyright Notice
///
/// This objects content is copyright (2010) of Insight Works.  All rights reserved.
/// Reproduction, modification, or distribution of part or all of the contents in any form is prohibited
/// without express written consent of Insight Works
///
///
/// www.dmsiworks.com
/// ************************
page 50980 "IW ABS Setup"
{
    ApplicationArea = All;
    Caption = 'Azure Blob Storage Setup';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "IW ABS Setup";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Container Name"; Rec."Container Name")
                {
                    ApplicationArea = All;
                }
                field("Storage Account"; Rec."Storage Account")
                {
                    ApplicationArea = All;
                }
                field("Blob Access Key"; Rec."Storage Account Access Key")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
