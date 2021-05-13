func @_Corona.RecaudoPagos.ServicioRecaudosBancarios.Program.Main$string$$$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :8 :2) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :8 :26)
cbde.store %_args, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :8 :26)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateHostBuilder
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :10 :21) // Not a variable of known type: args
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :10 :3) // CreateHostBuilder(args) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :10 :3) // CreateHostBuilder(args).Build() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\Corona.RecaudoPagos.ServicioRecaudosBancarios\\Program.cs" :10 :3) // CreateHostBuilder(args).Build().Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
