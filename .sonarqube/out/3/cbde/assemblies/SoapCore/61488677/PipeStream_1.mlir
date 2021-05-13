// Skipping function FlushAsync(none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.PipeStream.WriteAsync$byte$$.int.int.System.Threading.CancellationToken$(none, i32, i32, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :2) {
^entry (%_buffer : none, %_offset : i32, %_count : i32, %_cancellationToken : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :34)
cbde.store %_buffer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :34)
%1 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :49)
cbde.store %_offset, %1 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :49)
%2 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :61)
cbde.store %_count, %2 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :61)
%3 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :72)
cbde.store %_cancellationToken, %3 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :132 :72)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :134 :9) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %4 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :134 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ReadAsync(none, i32, i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadAsync(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.PipeStream.Read$System.Span$byte$$(none) -> i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :182 :2) {
^entry (%_buffer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :182 :27)
cbde.store %_buffer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :182 :27)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Verify
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :184 :22) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :184 :3) // Verify.NotDisposed(this) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :185 :7) // Not a variable of known type: _reader
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :185 :18) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :185 :7) // comparison of unknown type: _reader == null
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :185 :7)

^1: // JumpBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :187 :10) // new NotSupportedException() (ObjectCreationExpression)
cbde.throw %6 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :187 :4)

^2: // JumpBlock
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :190 :27) // Not a variable of known type: _reader
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :190 :27) // _reader.ReadAsync() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :190 :27) // _reader.ReadAsync().GetAwaiter() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :190 :27) // _reader.ReadAsync().GetAwaiter().GetResult() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadHelper
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :191 :21) // Not a variable of known type: buffer
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :191 :29) // Not a variable of known type: readResult
%14 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :191 :10) // ReadHelper(buffer, readResult) (InvocationExpression)
return %14 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :191 :3)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function WriteAsync(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.PipeStream.Write$System.ReadOnlySpan$byte$$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :209 :2) {
^entry (%_buffer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :209 :29)
cbde.store %_buffer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :209 :29)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Verify
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :211 :22) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :211 :3) // Verify.NotDisposed(this) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :212 :7) // Not a variable of known type: _writer
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :212 :18) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :212 :7) // comparison of unknown type: _writer == null
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :212 :7)

^1: // JumpBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :214 :10) // new NotSupportedException() (ObjectCreationExpression)
cbde.throw %6 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :214 :4)

^2: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :217 :3) // Not a variable of known type: _writer
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :217 :17) // Not a variable of known type: buffer
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :217 :3) // _writer.Write(buffer) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.PipeStream.Flush$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :223 :2) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :225 :7) // Not a variable of known type: _writer
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :225 :18) // null (NullLiteralExpression)
%2 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :225 :7) // comparison of unknown type: _writer == null
cond_br %2, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :225 :7)

^1: // JumpBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :227 :10) // new NotSupportedException() (ObjectCreationExpression)
cbde.throw %3 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :227 :4)

^2: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :230 :3) // Not a variable of known type: _writer
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :230 :3) // _writer.FlushAsync() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :230 :3) // _writer.FlushAsync().GetAwaiter() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :230 :3) // _writer.FlushAsync().GetAwaiter().GetResult() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function Dispose(i1), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.PipeStream.ReturnIfNotDisposed$T$$T$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :254 :2) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :254 :35)
cbde.store %_value, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :254 :35)
br ^0

^0: // JumpBlock
// Entity from another assembly: Verify
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :256 :22) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :256 :3) // Verify.NotDisposed(this) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :257 :10) // Not a variable of known type: value
return %3 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :257 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.MessageEncoder.PipeStream.ThrowDisposedOr$System.Exception$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :260 :2) {
^entry (%_ex : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :260 :36)
cbde.store %_ex, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :260 :36)
br ^0

^0: // JumpBlock
// Entity from another assembly: Verify
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :262 :22) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :262 :3) // Verify.NotDisposed(this) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :263 :9) // Not a variable of known type: ex
cbde.throw %3 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\PipeStream.cs" :263 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ReadHelper(none, none), it contains poisonous unsupported syntaxes

