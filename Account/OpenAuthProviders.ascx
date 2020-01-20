<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="GoogleAuthLogin.Account.OpenAuthProviders" %>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    $(document).ready(function () {
        $("#social button").each(function () {
            $(this).addClass('btn-' + this.id);
        });

        $("#social button span").each(function () {
            var id = $(this).parent().attr("id");
            $(this).addClass('fa-' + id);
        });

        $("#microsoft_img").addClass('fa fa-windows');
    });
</script>
<div id="socialLoginList">
    <h4>Use another service to log in.</h4>
    <hr />
    <div class="row">
        <div style="display:flex; flex-direction:row; justify-content:left; align-items:center">
            <%foreach (string Item in GetProviderNames()) {%>
                <div id="social" style="margin-right:5px">
                    <button type="submit" class="btn btn-social-icon" name="provider" id="<%: Item.ToLower() %>" value="<%: Item %>"
                        title="Log in using your <%: Item %> account.">
                        <span class="fa" id="<%: Item.ToLower() %>_img">
                        </span>
                    </button>
                </div>
            <%}%>
        </div>
    </div>
</div>
