// Skipping function ConfigureServices(none), it contains poisonous unsupported syntaxes

func @_Corona.RecaudoPagos.ServicioRecaudosBancarios.Startup.Configure$Microsoft.AspNetCore.Builder.IApplicationBuilder.Microsoft.AspNetCore.Hosting.IHostingEnvironment$(none, none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :53 :8) {
^entry (%_app : none, %_env : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :53 :30)
cbde.store %_app, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :53 :30)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :53 :55)
cbde.store %_env, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :53 :55)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :55 :7) // Not a variable of known type: env
%3 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :55 :7) // env.IsDevelopment() (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :55 :7)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :57 :4) // Not a variable of known type: app
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :57 :4) // app.UseDeveloperExceptionPage() (InvocationExpression)
br ^2

^2: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :60 :3) // Not a variable of known type: app
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :60 :51) // "/ServicioRecaudosBancarios.svc" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :60 :85) // new BasicHttpBinding() (ObjectCreationExpression)
// Entity from another assembly: SoapSerializer
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :60 :109) // SoapSerializer.DataContractSerializer (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :60 :3) // app.UseSoapEndpoint<IServicioRecaudosBancarios>("/ServicioRecaudosBancarios.svc", new BasicHttpBinding(), SoapSerializer.DataContractSerializer) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :61 :12) // Not a variable of known type: app
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :61 :60) // "/ServicioRecaudosBancarios.asmx" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :61 :95) // new BasicHttpBinding() (ObjectCreationExpression)
// Entity from another assembly: SoapSerializer
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :61 :119) // SoapSerializer.XmlSerializer (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :61 :12) // app.UseSoapEndpoint<IServicioRecaudosBancarios>("/ServicioRecaudosBancarios.asmx", new BasicHttpBinding(), SoapSerializer.XmlSerializer) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :62 :12) // Not a variable of known type: app
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :62 :12) // app.UseMvc() (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :64 :3) // Not a variable of known type: app
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :64 :3) // app.UseHttpsRedirection() (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :65 :3) // Not a variable of known type: app
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :65 :3) // app.UseRequestLocalization() (InvocationExpression)
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :66 :3) // Not a variable of known type: app
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :66 :3) // app.UseRouting() (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :67 :3) // Not a variable of known type: app
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :67 :15) // "AllowAll" (StringLiteralExpression)
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Startup.cs" :67 :3) // app.UseCors("AllowAll") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
