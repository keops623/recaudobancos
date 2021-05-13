func @_SoapCore.SoapCoreBufferManager.Clear$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :7 :2) {
^entry :
br ^0

^0: // ExitBlock
return

}
func @_SoapCore.SoapCoreBufferManager.ReturnBuffer$byte$$$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :11 :2) {
^entry (%_buffer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :11 :36)
cbde.store %_buffer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :11 :36)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :13 :3) // ArrayPool<byte> (GenericName)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :13 :3) // ArrayPool<byte>.Shared (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :13 :33) // Not a variable of known type: buffer
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :13 :3) // ArrayPool<byte>.Shared.Return(buffer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.SoapCoreBufferManager.TakeBuffer$int$(i32) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :16 :2) {
^entry (%_bufferSize : i32):
%0 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :16 :36)
cbde.store %_bufferSize, %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :16 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :18 :10) // ArrayPool<byte> (GenericName)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :18 :10) // ArrayPool<byte>.Shared (SimpleMemberAccessExpression)
%3 = cbde.load %0 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :18 :38)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :18 :10) // ArrayPool<byte>.Shared.Rent(bufferSize) (InvocationExpression)
return %4 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\SoapCoreBufferManager.cs" :18 :3)

^1: // ExitBlock
cbde.unreachable

}
