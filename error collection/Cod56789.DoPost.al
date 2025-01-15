codeunit 56789 DoPost
{
    TableNo = Integer;

    trigger OnRun()
    begin
        if Rec.Number mod 2 <> 0 then
            Error(ErrorInfo.Create('Number should be equal', true, Rec, Rec.FieldNo(Number)));

        if Rec.Number <= 0 then
            Error(ErrorInfo.Create('Number should be larger than 0', true, Rec, Rec.FieldNo(Number)));

        if Rec.Number mod 3 = 0 then
            Error(ErrorInfo.Create('Number should not be divisible by 10', true, Rec, Rec.FieldNo(Number)));

        // Everything was valid, do the actual posting.
    end;
}