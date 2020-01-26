<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="GoogleAuthLogin.Account.OpenAuthProviders" %>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css" rel="stylesheet" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/css-social-buttons/1.3.0/css/zocial.css" rel="stylesheet" type="text/css">
<style>
    .tooltip-inner {
    background-color: #338DFF;
}
    /*
    .tooltip.bs-tooltip-right .arrow:before {
    border-right-color: #87ceeb !important;
}
.tooltip.bs-tooltip-left .arrow:before {
    border-right-color: #87ceeb !important;
}
.tooltip.bs-tooltip-bottom .arrow:before {
    border-right-color: #87ceeb !important;
}
.tooltip.bs-tooltip-top .arrow:before {
    border-right-color: #87ceeb !important;
}
        */



</style>
<script type="text/javascript">
    
    $(document).ready(function () {
        $("#social button").each(function () {
            
            $(this).addClass('btn-' + this.id);
        });

        $("#social button span").each(function () {
            var id = $(this).parent().attr("id");
            $(this).addClass('fa-' + id);
        });

        //Hack
        $("#microsoft_img").addClass('fa fa-windows');
         $('[data-toggle="tooltip"]').tooltip();
        
        $("#microsoft").addClass('zocial windows');
        $('[data-toggle="tooltip"]').tooltip();
    });
   
    
</script>
<div id="socialLoginList">
    <h4>Use another service to log in.</h4>
    <hr />
    <div class="row">
        <div style="display:flex; flex-direction:row; justify-content:left; align-items:center">
            <%foreach (string provider in GetProviderNames()) {%>
                <div id="social" style="margin-right:5px">
                    <button type="submit" class="btn btn-social-icon" data-toggle="tooltip" data-placement="bottom" name="provider" id="<%: provider.ToLower() %>" value="<%: provider %>"
                        title="Log in using your <%: provider %> account.">
                        <span class="fa" id="<%: provider.ToLower() %>_img">
                        </span>
                    </button>
                </div>
            <%}%>
        </div>
    </div>
     <div class="row" style="margin-top:10px">
        <div style="display:flex; flex-direction:column; justify-content:left; align-items:flex-start">
            <%foreach (string provider in GetProviderNames()) {%>
                <div id="social1" style="margin-right:5px">
                    <button type="submit" style="width:150px" class="zocial <%=provider.ToLower()%>" data-toggle="tooltip" data-placement="bottom" name="provider" id="<%: provider.ToLower() %>" value="<%: provider %>"
                        title="Log in using your <%: provider %> account."> <%: provider %>
                    </button>
                </div>
            <%}%>
        </div>
    </div>
</div>
