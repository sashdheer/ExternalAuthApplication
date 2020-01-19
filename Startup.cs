using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GoogleAuthLogin.Startup))]
namespace GoogleAuthLogin
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
