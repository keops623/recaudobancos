using System;
using System.Collections.Generic;
using System.ServiceModel.Channels;
using System.Text;
using System.Xml;

namespace Corona.RecaudoPagos.DT.DTO
{
	class SecurityHeader : MessageHeader
	{
		public override string Name => throw new NotImplementedException();

		public override string Namespace => throw new NotImplementedException();

		protected override void OnWriteHeaderContents(XmlDictionaryWriter writer, MessageVersion messageVersion)
		{
			throw new NotImplementedException();
		}
	}
}
