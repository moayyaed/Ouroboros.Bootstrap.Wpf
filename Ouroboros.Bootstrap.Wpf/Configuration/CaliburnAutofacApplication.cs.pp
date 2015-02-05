using System.Windows;
using Autofac;
using Caliburn.Micro.Autofac;
using Ouroboros.Bootstrap.Wpf.ViewModels.Screens;

namespace $rootnamespace$.Configuration
{
    public class CaliburnAutofacApplication : AutofacBootstrapper<MainViewModel>
    {
        public CaliburnAutofacApplication()
        {
            Initialize();
        }

        protected override void ConfigureContainer(ContainerBuilder builder)
        {
            base.ConfigureContainer(builder);

            AutofacConfiguration.Configure(builder);
            AutomapperConfiguration.Configure();
        }

        protected override void ConfigureBootstrapper()
        {
            base.ConfigureBootstrapper();
            EnforceNamespaceConvention = false;
        }

        protected override void OnStartup(object sender, StartupEventArgs e)
        {
            DisplayRootViewFor<MainViewModel>();
        }
    }
}