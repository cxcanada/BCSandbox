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
codeunit 50980 "IW ABS Mgmt"
{
    procedure Initialize(BlobClient: Codeunit "ABS Blob Client";)
    var
        response: Codeunit "ABS Operation Response";
        containers: Record "ABS Container";
        content: Record "ABS Container Content";
        Txt: Text;
    begin
        if not ABSSetup.Get() then begin
            Error('ABS Setup not complete. Go to ABS Setup page.');
        end;

        Authorization := StorageServiceAuthorization.CreateSharedKey(SecretText.SecretStrSubstNo(ABSSetup."Storage Account Access Key"));
        // ContainerClient.Initialize(ABSSetup."Storage Account", Authorization);
        //response := ContainerClient.CreateContainer('youtube');
        // response := ContainerClient.ListContainers(containers);
        // if response.IsSuccessful() then begin
        //     if containers.findset() then
        //         repeat
        //             message('%1', containers.Name);
        //         until containers.next() = 0;
        // end else
        //     message('ABS Error: %1', response.GetError());

        BlobClient.Initialize(ABSSetup."Storage Account", ABSSetup."Container Name", Authorization);
        //        response:= BlobClient.PutBlobBlockBlobStream();



        // response := BlobClient.PutBlobBlockBlobText('BCBlob2', 'This is the content of our blobloblob');
        // if not Response.IsSuccessful() then
        //     message('PutBlobBlobBlob %1', response.GetError());

        // response := BlobClient.ListBlobs(content);
        // if response.IsSuccessful() then
        //     if content.findset() then
        //         repeat
        //             message('%1', content.Name);
        //             BlobClient.GetBlobAsText(content.Name, Txt);
        //             Message('%1', Txt);
        //         until content.next() = 0;

    end;

    var
        ABSSetup: Record "IW ABS Setup";
        // ContainerClient: Codeunit "ABS Container Client";
        // BlobClient: Codeunit "ABS Blob Client";
        StorageServiceAuthorization: Codeunit "Storage Service Authorization";
        Authorization: Interface "Storage Service Authorization";
}
