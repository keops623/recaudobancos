using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System.Collections.Generic;
using System.Globalization;
using System.IO;

namespace Corona.RecaudoPagos.ServicioRecaudosBancarios
{
    public class Startup
    {
        private readonly IHostingEnvironment _hostingEnvironment;

        public Startup(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            Configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc().AddXmlSerializerFormatters();
            services.AddControllers();

            // configuracion de swagger 
            AddSwagger(services);

            // se configura globalizacion 

            services.Configure<RequestLocalizationOptions>(options =>
            {
                options.DefaultRequestCulture = new Microsoft.AspNetCore.Localization.RequestCulture("es-CO");
                options.SupportedCultures = new List<CultureInfo> { new CultureInfo("es-CO") };
            });

            // configuracion de cors para accede desde el proyecto web 
            services.AddCors(options =>
            {
                options.AddPolicy("AllowAll", p => p.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
            });

            services.AddSwaggerGen(options =>
            {
                options.CustomSchemaIds(type => type.ToString());
            });

            // injeccion de la capa negocio
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
        }


        private void AddSwagger(IServiceCollection services)
        {
            var filePath = Path.Combine(_hostingEnvironment.ContentRootPath, "Corona.RecaudoPagos.ServicioRecaudosBancarios.xml");

            services.AddSwaggerGen(options =>
            {
                var groupName = "v1";

                options.SwaggerDoc("ApiRecaudoBancarios", new OpenApiInfo
                {
                    Title = "Corona.RecaudoPagos.ServicioRecaudosBancarios",
                    Version = groupName
                });
                options.IncludeXmlComments(filePath);
            });
        }


        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();
            app.UseRequestLocalization();
            app.UseRouting();
            app.UseCors("AllowAll");
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/ApiRecaudoBancarios/swagger.json", "Api Recaudos Pagos");
            });

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
