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
pageextension 50100 CustomerExt extends "Customer Card"
{
    layout
    {
        addbefore(General)
        {
            group(SecretKeys)
            {
                Caption = 'Secret Keys';
                field("Secret Key 1"; key1Text)
                {
                    ApplicationArea = All;
                    Caption = 'Secret Key 1';
                    ExtendedDatatype = Masked;
                    trigger OnValidate()
                    begin
                        Rec.SetSecretKey1(key1Text);
                    end;
                }
                field("Secret Key 2"; key2Text)
                {
                    ApplicationArea = All;
                    Caption = 'Secret Key 2';
                    ExtendedDatatype = Masked;
                    trigger OnValidate()
                    begin
                        Rec.SetSecretKey2(key2Text);
                    end;
                }
            }
        }
    }

    actions
    {
        addlast("&Customer")
        {
            group(Keys)
            {
                action(GetKey1)
                {
                    ApplicationArea = All;
                    Caption = 'Get Secret Key 1';
                    Image = CustomerCode;
                    trigger OnAction()
                    var
                        text: Text;
                    begin
                        text := Rec.GetSecretKey1();
                        Message('Secret Key 1: ' + text);
                    end;
                }

                action(GetKey2)
                {
                    ApplicationArea = All;
                    Caption = 'Get Secret Key 2';
                    Image = CustomerCode;
                    trigger OnAction()
                    var
                        text: Text;
                    begin
                        text := Rec.GetSecretKey2();
                        Message('Secret Key 2: ' + text);
                    end;
                }
            }
        }
    }

    var
        key1Text: Text;
        key2Text: Text;
}