using System;
using System.Security.Cryptography;
using System.Text;

namespace Corona.RecaudoPagos.Soporte.General
{
    public class Criptografo
    {
        /// <summary>
        /// MD5: recibe un string que nos permite convertirlo a MD5. Este algoritmo, en teoría no se puede desencriptar.
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public static string MD5(string word)
        {
            try
            {
                MD5 md5 = MD5CryptoServiceProvider.Create();
                ASCIIEncoding encoding = new ASCIIEncoding();
                byte[] stream = null;
                StringBuilder sb = new StringBuilder();
                stream = md5.ComputeHash(encoding.GetBytes(word));
                for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
                return sb.ToString();
            }
            catch { return word; }
        }
        /// <summary>
        /// token: nos generá un valor único encriptado en MD5, cada vez que llames al método, este va a generar un nuevo ID.
        /// </summary>
        /// <returns></returns>
        public static string Token()
        {
            long i = 1;
            foreach (byte b in Guid.NewGuid().ToByteArray()) i *= ((int)b + 1);
            return MD5(string.Format("{0:x}", i - DateTime.Now.Ticks));
        }
        /// <summary>
        /// Base64Encode: este permite encriptar a Base64 cualquier cadena ingresada, pero se puede desencriptar usando el método Base64Decode
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public string Base64Encode(string word)
        {
            try
            {
                byte[] byt = System.Text.Encoding.UTF8.GetBytes(word);
                return Convert.ToBase64String(byt);
            }
            catch { return word; }
        }
        /// <summary>
        /// Base64Decode: este permite desencriptar la cadena Base64 
        /// </summary>
        /// <param name="word"></param>
        /// <returns></returns>
        public string Base64Decode(string word)
        {
            try
            {
                byte[] b = Convert.FromBase64String(word);
                return System.Text.Encoding.UTF8.GetString(b);
            }
            catch { return word; }
        }
        /// <summary>
        /// SHA1: recibe un string que nos permite convertirlo a SHA1.
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string SHA1(string str)
        {
            try
            {
                SHA1 sha1 = SHA1Managed.Create();
                ASCIIEncoding encoding = new ASCIIEncoding();
                byte[] stream = null;
                StringBuilder sb = new StringBuilder();
                stream = sha1.ComputeHash(encoding.GetBytes(str));
                for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
                return sb.ToString();
            }
            catch { return str; }
        }
        /// <summary>
        /// SHA256: recibe un string que nos permite convertirlo a SHA256
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string SHA256(string str)
        {
            try
            {
                SHA256 sha256 = SHA256Managed.Create();
                ASCIIEncoding encoding = new ASCIIEncoding();
                byte[] stream = null;
                StringBuilder sb = new StringBuilder();
                stream = sha256.ComputeHash(encoding.GetBytes(str));
                for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
                return sb.ToString();
            }
            catch { return str; }
        }
        /// <summary>
        /// SHA384: recibe un string que nos permite convertirlo a SHA384
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string SHA384(string str)
        {
            try
            {
                SHA384 sha384 = SHA384Managed.Create();
                ASCIIEncoding encoding = new ASCIIEncoding();
                byte[] stream = null;
                StringBuilder sb = new StringBuilder();
                stream = sha384.ComputeHash(encoding.GetBytes(str));
                for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
                return sb.ToString();
            }
            catch { return str; }
        }
        /// <summary>
        /// SHA512: recibe un string que nos permite convertirlo a SHA512
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string SHA512(string str)
        {
            try
            {
                SHA512 sha512 = SHA512Managed.Create();
                ASCIIEncoding encoding = new ASCIIEncoding();
                byte[] stream = null;
                StringBuilder sb = new StringBuilder();
                stream = sha512.ComputeHash(encoding.GetBytes(str));
                for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
                return sb.ToString();
            }
            catch { return str; }
        }
    }
}
