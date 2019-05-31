using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TarotImgTesting.Startup))]
namespace TarotImgTesting
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
