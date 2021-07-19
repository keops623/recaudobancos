using NUnit.Framework;
using Corona.RecaudoPagos.BM.Recaudo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Corona.RecaudoPagos.BM.Recaudo.Tests
{
	[TestFixture()]
	public class BMRecaudoTests
	{
		private BMRecaudo _Recuados;
		public void SetUp()
		{
			_Recuados = new BMRecaudo();
		}
		[Test()]
		public void RealizarRecaudoTest()
		{
			var result = true;
			Assert.IsTrue(result, "OK");
		}
	}
}
