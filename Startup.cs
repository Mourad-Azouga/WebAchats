using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebAchats2.Startup))]
namespace WebAchats2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
