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
tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(50100; "Secret Key 1"; Guid)
        {
            Caption = 'Secret Key 1';
            DataClassification = CustomerContent;
            Description = 'This key is used to access the Secret Key 1 from Isolated Storage.';
        }
        field(50101; "Secret Key 2"; Guid)
        {
            Caption = 'Secret Key 2';
            DataClassification = CustomerContent;
            Description = 'This key is used to access the Secret Key 2 from Isolated Storage.';
        }
    }

    internal procedure SetSecretKey1(text: Text)
    begin
        if isNullGuid(Rec."Secret Key 1") then begin
            Rec."Secret Key 1" := CreateGuid();
            if Rec.Modify() then;
        end;
        text := text.Trim();
        IsolatedStorage.Set(Rec."Secret Key 1", text, DataScope::Company);
    end;

    internal procedure SetSecretKey2(text: Text)
    begin
        if isNullGuid(Rec."Secret Key 2") then begin
            Rec."Secret Key 2" := CreateGuid();
            if Rec.Modify() then;
        end;
        text := text.Trim();
        IsolatedStorage.Set(Rec."Secret Key 2", text, DataScope::Company);
    end;

    internal procedure GetSecretKey1() keyValue: Text
    begin
        if not IsolatedStorage.Get(Rec."Secret Key 1", DataScope::Company, keyValue) then begin
            exit('');
        end;
    end;

    internal procedure GetSecretKey2() keyValue: Text
    begin
        if not IsolatedStorage.Get(Rec."Secret Key 2", DataScope::Company, keyValue) then begin
            exit('');
        end;
    end;
}