using Corona.RecaudoPagos.ServicioRecaudosBancarios.Controllers;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using SoapCore;
using System.ServiceModel;

namespace Corona.RecaudoPagos.ServicioRecaudosBancarios
{
	public class Startup
    {
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.TryAddSingleton<IServicioRecaudosBancarios, ServicioRecaudoBancario>();
            services.AddMvc(x => x.EnableEndpointRouting = false);
            services.AddSoapCore();

			// configuracion de cors para accede desde el proyecto web 

			services.AddCors(options =>
			{
				options.AddPolicy("AllowAll", p => p.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
			});

			services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
		}

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app)
        {
			app.UseSoapEndpoint<IServicioRecaudosBancarios>("/ServicioRecaudosBancarios.svc", new BasicHttpBinding(), SoapSerializer.DataContractSerializer);
            app.UseSoapEndpoint<IServicioRecaudosBancarios>("/ServicioRecaudosBancarios.asmx", new BasicHttpBinding(), SoapSerializer.XmlSerializer);
            app.UseMvc();
			app.UseHttpsRedirection();
			app.UseRequestLocalization();
			app.UseRouting();
			app.UseCors("AllowAll");
		}
    }
}
