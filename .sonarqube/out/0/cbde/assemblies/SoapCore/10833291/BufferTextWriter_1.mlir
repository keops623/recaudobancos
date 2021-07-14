// Skipping function Initialize(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.BufferTextWriter.Reset$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :120 :2) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :122 :19) // null (NullLiteralExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.BufferTextWriter.Flush$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :126 :2) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ThrowIfNotInitialized
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :128 :3) // ThrowIfNotInitialized() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EncodeCharacters
%1 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :129 :34) // true
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :129 :3) // EncodeCharacters(flushEncoder: true) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CommitBytes
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :130 :3) // CommitBytes() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function FlushAsync(), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.BufferTextWriter.Write$char$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :148 :2) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :148 :29)
cbde.store %_value, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :148 :29)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ThrowIfNotInitialized
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :150 :3) // ThrowIfNotInitialized() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :151 :3) // Not a variable of known type: _charBuffer
%3 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :151 :15) // Not a variable of known type: _charBufferPosition
%4 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :151 :15) // Inc/Decrement of field or property _charBufferPosition
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :151 :3) // _charBuffer[_charBufferPosition++] (ElementAccessExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :151 :40) // Not a variable of known type: value
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EncodeCharactersIfBufferFull
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :152 :3) // EncodeCharactersIfBufferFull() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.BufferTextWriter.Write$string$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :156 :2) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :156 :29)
cbde.store %_value, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :156 :29)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :158 :7) // Not a variable of known type: value
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :158 :16) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :158 :7) // comparison of unknown type: value == null
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :158 :7)

^1: // JumpBlock
return loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :160 :4)

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Write
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :163 :9) // Not a variable of known type: value
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :163 :9) // value.AsSpan() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :163 :3) // Write(value.AsSpan()) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.BufferTextWriter.Write$System.ReadOnlySpan$char$$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :177 :2) {
^entry (%_buffer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :177 :28)
cbde.store %_buffer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :177 :28)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ThrowIfNotInitialized
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :180 :3) // ThrowIfNotInitialized() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :183 :7) // Not a variable of known type: buffer
%3 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :183 :7) // buffer.Length (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :183 :24) // Not a variable of known type: CharBufferSlack
%5 = cmpi "sle", %3, %4 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :183 :7)
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :183 :7)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :185 :4) // Not a variable of known type: buffer
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :185 :18) // Not a variable of known type: _charBuffer
%8 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :185 :37) // Not a variable of known type: _charBufferPosition
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :185 :18) // _charBuffer.AsSpan(_charBufferPosition) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :185 :4) // buffer.CopyTo(_charBuffer.AsSpan(_charBufferPosition)) (InvocationExpression)
%11 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :186 :4) // Not a variable of known type: _charBufferPosition
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :186 :27) // Not a variable of known type: buffer
%13 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :186 :27) // buffer.Length (SimpleMemberAccessExpression)
%14 = addi %11, %13 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :186 :4)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EncodeCharactersIfBufferFull
%15 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :187 :4) // EncodeCharactersIfBufferFull() (InvocationExpression)
br ^3

^2: // SimpleBlock
%16 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :191 :22)
%17 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :191 :8) // charsCopied
cbde.store %16, %17 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :191 :8)
br ^4

^4: // BinaryBranchBlock
%18 = cbde.load %17 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :192 :11)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :192 :25) // Not a variable of known type: buffer
%20 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :192 :25) // buffer.Length (SimpleMemberAccessExpression)
%21 = cmpi "slt", %18, %20 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :192 :11)
cond_br %21, ^5, ^3 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :192 :11)

^5: // SimpleBlock
// Entity from another assembly: Math
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :32) // Not a variable of known type: buffer
%23 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :32) // buffer.Length (SimpleMemberAccessExpression)
%24 = cbde.load %17 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :48)
%25 = subi %23, %24 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :32)
%26 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :61) // Not a variable of known type: CharBufferSlack
%27 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :23) // Math.Min(buffer.Length - charsCopied, CharBufferSlack) (InvocationExpression)
%28 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :9) // charsToCopy
cbde.store %27, %28 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :194 :9)
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :5) // Not a variable of known type: buffer
%30 = cbde.load %17 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :18)
%31 = cbde.load %28 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :31)
%32 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :5) // buffer.Slice(charsCopied, charsToCopy) (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :51) // Not a variable of known type: _charBuffer
%34 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :70) // Not a variable of known type: _charBufferPosition
%35 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :51) // _charBuffer.AsSpan(_charBufferPosition) (InvocationExpression)
%36 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :195 :5) // buffer.Slice(charsCopied, charsToCopy).CopyTo(_charBuffer.AsSpan(_charBufferPosition)) (InvocationExpression)
%37 = cbde.load %17 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :196 :5)
%38 = cbde.load %28 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :196 :20)
%39 = addi %37, %38 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :196 :5)
cbde.store %39, %17 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :196 :5)
%40 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :197 :5) // Not a variable of known type: _charBufferPosition
%41 = cbde.load %28 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :197 :28)
%42 = addi %40, %41 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :197 :5)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EncodeCharactersIfBufferFull
%43 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :198 :5) // EncodeCharactersIfBufferFull() (InvocationExpression)
br ^4

^3: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.BufferTextWriter.WriteLine$System.ReadOnlySpan$char$$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :211 :2) {
^entry (%_buffer : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :211 :32)
cbde.store %_buffer, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :211 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Write
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :214 :9) // Not a variable of known type: buffer
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :214 :3) // Write(buffer) (InvocationExpression)
// Entity from another assembly: WriteLine
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :215 :3) // WriteLine() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.BufferTextWriter.EncodeCharactersIfBufferFull$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :221 :2) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :223 :7) // Not a variable of known type: _charBufferPosition
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :223 :30) // Not a variable of known type: _charBuffer
%2 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :223 :30) // _charBuffer.Length (SimpleMemberAccessExpression)
%3 = cmpi "eq", %0, %2 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :223 :7)
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :223 :7)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EncodeCharacters
%4 = constant 0 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :225 :35) // false
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :225 :4) // EncodeCharacters(flushEncoder: false) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function EncodeCharacters(i1), it contains poisonous unsupported syntaxes

// Skipping function CommitBytes(), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.BufferTextWriter.ThrowIfNotInitialized$$() -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :297 :2) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :299 :7) // Not a variable of known type: _bufferWriter
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :299 :24) // null (NullLiteralExpression)
%2 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :299 :7) // comparison of unknown type: _bufferWriter == null
cond_br %2, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :299 :7)

^1: // JumpBlock
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :40) // "Call " (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :50) // nameof(Initialize) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :40) // Binary expression on unsupported types "Call " + nameof(Initialize)
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :71) // " first." (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :40) // Binary expression on unsupported types "Call " + nameof(Initialize) + " first."
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :10) // new InvalidOperationException("Call " + nameof(Initialize) + " first.") (ObjectCreationExpression)
cbde.throw %8 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\BufferTextWriter.cs" :301 :4)

^2: // ExitBlock
return

}
