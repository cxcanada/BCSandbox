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
table 50980 "IW ABS Setup"
{
    Caption = 'Azure Blob Storage Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(2; "Storage Account"; Code[50])
        {
            Caption = 'Storage Account';
            DataClassification = CustomerContent;
        }
        field(3; "Container Name"; Code[50])
        {
            Caption = 'Container Name';
            DataClassification = CustomerContent;
        }
        field(4; "Storage Account Access Key"; Code[150])
        {
            Caption = 'Storage Account Access Key';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }
}
