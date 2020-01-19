<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="GoogleAuthLogin.Account.OpenAuthProviders" %>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    $(document).ready(function () {
        $("#Google").addClass("btn btn-social-icon btn-google");
        $("#Google span").addClass("fa fa-google");
        $("#Twitter").addClass("btn btn-social-icon btn-twitter");
        $("#Twitter span").addClass("fa fa-twitter");
        $("#Facebook").addClass("btn btn-social-icon btn-facebook");
        $("#Facebook span").addClass("fa fa-facebook");
    });
</script>
<div id="socialLoginList">
    <h4>Use another service to log in.</h4>
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" id="<%#: Item %>" value="<%#: Item %>"
                    title="Log in using your <%#: Item %> account.">
                     <span  id="<%#: Item %>_img">
                    </span>
                </button>
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
                <p>There are no external authentication services configured. See <a href="https://go.microsoft.com/fwlink/?LinkId=252803">this article</a> for details on setting up this ASP.NET application to support logging in via external services.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>
