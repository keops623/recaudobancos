// Skipping function ValidateEncoding(none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.SoapMessageEncoderDefaults.TryValidateEncoding$System.Text.Encoding.outSystem.Exception$(none, none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :30 :2) {
^entry (%_encoding : none, %_exception : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :30 :41)
cbde.store %_encoding, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :30 :41)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :30 :60)
cbde.store %_exception, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :30 :60)
br ^0

^0: // ForInitializerBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :32 :20) // Not a variable of known type: encoding
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :32 :20) // encoding.WebName (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :33 :35) // Not a variable of known type: SupportedEncodings
%7 = constant 0 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :16)
%8 = cbde.alloca i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :12) // i
cbde.store %7, %8 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :12)
br ^1

^1: // BinaryBranchBlock
%9 = cbde.load %8 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :19)
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :23) // Not a variable of known type: supportedEncodings
%11 = cbde.unknown : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :23) // supportedEncodings.Length (SimpleMemberAccessExpression)
%12 = cmpi "slt", %9, %11 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :19)
cond_br %12, ^2, ^3 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :19)

^2: // BinaryBranchBlock
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :8) // Not a variable of known type: charSet
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :19) // Not a variable of known type: supportedEncodings
%15 = cbde.load %8 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :38)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :19) // supportedEncodings[i] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :19) // supportedEncodings[i].WebName (SimpleMemberAccessExpression)
%18 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :8) // comparison of unknown type: charSet == supportedEncodings[i].WebName
cond_br %18, ^4, ^5 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :37 :8)

^4: // JumpBlock
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :39 :17) // null (NullLiteralExpression)
%20 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :40 :12) // true
return %20 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :40 :5)

^5: // SimpleBlock
%21 = cbde.load %8 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :50)
%22 = constant 1 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :50)
%23 = addi %21, %22 : i32 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :50)
cbde.store %23, %8 : memref<i32> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :35 :50)
br ^1

^3: // JumpBlock
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :44 :59) // Not a variable of known type: charSet
%25 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :44 :37) // $"The text encoding '{charSet}' used in the text message format is not supported." (InterpolatedStringExpression)
%26 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :44 :121) // nameof(encoding) (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :44 :15) // new ArgumentException($"The text encoding '{charSet}' used in the text message format is not supported.", nameof(encoding)) (ObjectCreationExpression)
%28 = constant 0 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :45 :10) // false
return %28 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoderDefaults.cs" :45 :3)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function EncodingToCharSet(none), it contains poisonous unsupported syntaxes

