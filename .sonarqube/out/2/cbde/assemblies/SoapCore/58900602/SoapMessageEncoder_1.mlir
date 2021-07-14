func @_SoapCore.MessageEncoder.SoapMessageEncoder.IsContentTypeSupported$string$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :65 :2) {
^entry (%_contentType : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :65 :37)
cbde.store %_contentType, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :65 :37)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :67 :7) // Not a variable of known type: contentType
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :67 :22) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :67 :7) // comparison of unknown type: contentType == null
cond_br %3, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :67 :7)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :69 :36) // nameof(contentType) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :69 :10) // new ArgumentNullException(nameof(contentType)) (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :69 :4)

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsContentTypeSupported
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :72 :30) // Not a variable of known type: contentType
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :72 :43) // Not a variable of known type: ContentType
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :72 :56) // Not a variable of known type: MediaType
%9 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :72 :7) // IsContentTypeSupported(contentType, ContentType, MediaType) (InvocationExpression)
cond_br %9, ^3, ^4 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :72 :7)

^3: // JumpBlock
%10 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :74 :11) // true
return %10 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :74 :4)

^4: // BinaryBranchBlock
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :78 :7) // Not a variable of known type: MessageVersion
// Entity from another assembly: MessageVersion
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :78 :29) // MessageVersion.None (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :78 :7) // MessageVersion.Equals(MessageVersion.None) (InvocationExpression)
cond_br %13, ^5, ^6 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :78 :7)

^5: // BinaryBranchBlock
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :80 :33) // "text/xml" (StringLiteralExpression)
%16 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :81 :33) // "application/rss+xml" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :82 :33) // "application/atom+xml" (StringLiteralExpression)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :83 :33) // "text/html" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsContentTypeSupported
%22 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :85 :31) // Not a variable of known type: contentType
%23 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :85 :44) // Not a variable of known type: rss1MediaType
%24 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :85 :59) // Not a variable of known type: rss1MediaType
%25 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :85 :8) // IsContentTypeSupported(contentType, rss1MediaType, rss1MediaType) (InvocationExpression)
cond_br %25, ^7, ^8 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :85 :8)

^7: // JumpBlock
%26 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :87 :12) // true
return %26 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :87 :5)

^8: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsContentTypeSupported
%27 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :90 :31) // Not a variable of known type: contentType
%28 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :90 :44) // Not a variable of known type: rss2MediaType
%29 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :90 :59) // Not a variable of known type: rss2MediaType
%30 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :90 :8) // IsContentTypeSupported(contentType, rss2MediaType, rss2MediaType) (InvocationExpression)
cond_br %30, ^9, ^10 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :90 :8)

^9: // JumpBlock
%31 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :92 :12) // true
return %31 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :92 :5)

^10: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsContentTypeSupported
%32 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :95 :31) // Not a variable of known type: contentType
%33 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :95 :44) // Not a variable of known type: htmlMediaType
%34 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :95 :59) // Not a variable of known type: atomMediaType
%35 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :95 :8) // IsContentTypeSupported(contentType, htmlMediaType, atomMediaType) (InvocationExpression)
cond_br %35, ^11, ^12 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :95 :8)

^11: // JumpBlock
%36 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :97 :12) // true
return %36 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :97 :5)

^12: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsContentTypeSupported
%37 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :100 :31) // Not a variable of known type: contentType
%38 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :100 :44) // Not a variable of known type: atomMediaType
%39 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :100 :59) // Not a variable of known type: atomMediaType
%40 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :100 :8) // IsContentTypeSupported(contentType, atomMediaType, atomMediaType) (InvocationExpression)
cond_br %40, ^13, ^6 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :100 :8)

^13: // JumpBlock
%41 = constant 1 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :102 :12) // true
return %41 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :102 :5)

^6: // JumpBlock
%42 = constant 0 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :106 :10) // false
return %42 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :106 :3)

^14: // ExitBlock
cbde.unreachable

}
// Skipping function ReadMessageAsync(none, i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadMessageAsync(none, i32, none), it contains poisonous unsupported syntaxes

// Skipping function WriteMessageAsync(none, none), it contains poisonous unsupported syntaxes

// Skipping function WriteMessageAsync(none, none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.SoapMessageEncoder.GetMediaType$System.ServiceModel.Channels.MessageVersion$(none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :191 :2) {
^entry (%_version : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :191 :38)
cbde.store %_version, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :191 :38)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :195 :7) // Not a variable of known type: version
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :195 :7) // version.Envelope (SimpleMemberAccessExpression)
// Entity from another assembly: EnvelopeVersion
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :195 :27) // EnvelopeVersion.Soap12 (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :195 :7) // comparison of unknown type: version.Envelope == EnvelopeVersion.Soap12
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :195 :7)

^1: // SimpleBlock
%6 = constant unit loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :197 :16) // Soap12MediaType (IdentifierName)
br ^3

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :199 :12) // Not a variable of known type: version
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :199 :12) // version.Envelope (SimpleMemberAccessExpression)
// Entity from another assembly: EnvelopeVersion
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :199 :32) // EnvelopeVersion.Soap11 (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :199 :12) // comparison of unknown type: version.Envelope == EnvelopeVersion.Soap11
cond_br %10, ^4, ^5 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :199 :12)

^4: // SimpleBlock
%11 = constant unit loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :201 :16) // Soap11MediaType (IdentifierName)
br ^3

^5: // BinaryBranchBlock
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :203 :12) // Not a variable of known type: version
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :203 :12) // version.Envelope (SimpleMemberAccessExpression)
// Entity from another assembly: EnvelopeVersion
%14 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :203 :32) // EnvelopeVersion.None (SimpleMemberAccessExpression)
%15 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :203 :12) // comparison of unknown type: version.Envelope == EnvelopeVersion.None
cond_br %15, ^6, ^7 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :203 :12)

^6: // SimpleBlock
%16 = constant unit loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :205 :16) // XmlMediaType (IdentifierName)
br ^3

^7: // JumpBlock
%17 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :209 :61) // Not a variable of known type: version
%18 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :209 :61) // version.Envelope (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :209 :40) // $"Envelope Version '{version.Envelope}' is not supported." (InterpolatedStringExpression)
%20 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :209 :10) // new InvalidOperationException($"Envelope Version '{version.Envelope}' is not supported.") (ObjectCreationExpression)
cbde.throw %20 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :209 :4)

^3: // JumpBlock
%21 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :212 :10) // Not a variable of known type: mediaType
return %21 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :212 :3)

^8: // ExitBlock
cbde.unreachable

}
func @_SoapCore.MessageEncoder.SoapMessageEncoder.GetContentType$string.string$(none, none) -> none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :215 :2) {
^entry (%_mediaType : none, %_charSet : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :215 :40)
cbde.store %_mediaType, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :215 :40)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :215 :58)
cbde.store %_charSet, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :215 :58)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :10) // string (PredefinedType)
// Entity from another assembly: CultureInfo
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :24) // CultureInfo.InvariantCulture (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :54) // "{0}; charset={1}" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :74) // Not a variable of known type: mediaType
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :85) // Not a variable of known type: charSet
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :10) // string.Format(CultureInfo.InvariantCulture, "{0}; charset={1}", mediaType, charSet) (InvocationExpression)
return %7 : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :217 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsContentTypeSupported(none, none, none), it contains poisonous unsupported syntaxes

// Skipping function IsCharSetSupported(none), it contains poisonous unsupported syntaxes

func @_SoapCore.MessageEncoder.SoapMessageEncoder.IsUtf8Encoding$System.Text.Encoding$(none) -> i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :314 :2) {
^entry (%_encoding : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :314 :37)
cbde.store %_encoding, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :314 :37)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :316 :10) // Not a variable of known type: encoding
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :316 :10) // encoding.WebName (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :316 :30) // "utf-8" (StringLiteralExpression)
%4 = cbde.unknown : i1  loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :316 :10) // comparison of unknown type: encoding.WebName == "utf-8"
return %4 : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :316 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_SoapCore.MessageEncoder.SoapMessageEncoder.ThrowIfMismatchedMessageVersion$System.ServiceModel.Channels.Message$(none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :319 :2) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :319 :47)
cbde.store %_message, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :319 :47)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :321 :8) // Not a variable of known type: message
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :321 :8) // message.Version (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :321 :31) // Not a variable of known type: MessageVersion
%4 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :321 :8) // message.Version.Equals(MessageVersion) (InvocationExpression)
%5 = cbde.unknown : i1 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :321 :7) // !message.Version.Equals(MessageVersion) (LogicalNotExpression)
cond_br %5, ^1, ^2 loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :321 :7)

^1: // JumpBlock
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :59) // Not a variable of known type: message
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :59) // message.Version (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :59) // message.Version.Envelope (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :116) // Not a variable of known type: message
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :116) // message.Version (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :116) // message.Version.Envelope (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :40) // $"Message version {message.Version.Envelope} doesn't match encoder version {message.Version.Envelope}" (InterpolatedStringExpression)
%13 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :10) // new InvalidOperationException($"Message version {message.Version.Envelope} doesn't match encoder version {message.Version.Envelope}") (ObjectCreationExpression)
cbde.throw %13 :  none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :323 :4)

^2: // ExitBlock
return

}
func @_SoapCore.MessageEncoder.SoapMessageEncoder.WriteXmlCore$System.ServiceModel.Channels.Message.System.Xml.XmlWriter$(none, none) -> () loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :327 :2) {
^entry (%_message : none, %_xmlWriter : none):
%0 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :327 :28)
cbde.store %_message, %0 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :327 :28)
%1 = cbde.alloca none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :327 :45)
cbde.store %_xmlWriter, %1 : memref<none> loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :327 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :329 :3) // Not a variable of known type: message
%3 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :329 :24) // Not a variable of known type: xmlWriter
%4 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :329 :3) // message.WriteMessage(xmlWriter) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :330 :3) // Not a variable of known type: xmlWriter
%6 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :330 :3) // xmlWriter.WriteEndDocument() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :331 :3) // Not a variable of known type: xmlWriter
%8 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :331 :3) // xmlWriter.Flush() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :332 :3) // Not a variable of known type: xmlWriter
%10 = cbde.unknown : none loc("C:\\julian\\Source\\Repos\\CC00-RecaudosServicioBanco-NetCore\\SoapCore\\MessageEncoder\\SoapMessageEncoder.cs" :332 :3) // xmlWriter.Dispose() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
