﻿using Corona.RecaudoPagos.DT.DTO;
using Corona.RecaudoPagos.DT.Notificacion;
using System;
using System.Collections.Generic;
using System.Text;
using static Corona.RecaudoPagos.DT.Notificacion.DTOComponentes;

namespace Corona.RecaudoPagos.DT.General
{
    public class DTOAuthHeader
    {
        public string User;
        public string Password;
        public bool ValidateAuthorization(out DTOObjetoGeneralSalida ObjetoSalida)
        {
            DTOConfiguraciones Configuraciones = new DTOConfiguraciones();
            if (!Configuraciones.UsuarioWS.ToString().Equals(User) ||
                !Configuraciones.ContrasenaWS.ToString().Equals(Password))
            {
                DTOMensaje objMensaje = new DTOMensaje();
                objMensaje = DTOMensaje.GetMensaje(DTOCodigoMensajes.GENERAL_MENSAJE2, TipoMensaje.General);
                ObjetoSalida = new DTOObjetoGeneralSalida
                {
                    DescripcionError = objMensaje.Texto,
                    CodigoError = objMensaje.Valor
                };
                return false;
            }
            ObjetoSalida = null;
            return true;
        }
    }
}
