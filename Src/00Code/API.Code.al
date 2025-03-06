codeunit 50102 Api
{
   procedure GetRecords(): text
    var
        client: HttpClient;
        request: HttpRequestMessage;
        response: HttpResponseMessage;
        content: Text;
        headers : HttpHeaders;
    begin
            headers.Add('User-Agent', 'Mozilla/5.0');
    request.GetHeaders := headers;
        request.SetRequestUri('https://reqres.in/api/users/2');
        request.Method := 'Get';

        if client.Send(request, response) then
            if response.IsSuccessStatusCode then begin
                response.Content.ReadAs(content);
                exit(content)
            end
            else
                exit(format(response.ReasonPhrase))
        else
            exit('eeeeeeeeeeeeeeeeeeeee');
    end;

    
    var
        myInt: Integer;
}