using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIdeGesMatriPasitos
{
    public partial class Login : System.Web.UI.Page
    {
        PasitosDataContext pasitos = new PasitosDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string usu = Login2.UserName;
            string pass = Login2.Password;

            try
            {
                if (usu == string.Empty & pass == string.Empty)
                {
                    Login2.FailureText = "CAMPOS VACIOS";
                }
                else
                {
                    if ((from usuariob in pasitos.TUsuario
                         where usuariob.usuario == usu
                         select usuariob).Count() > 0)
                    {
                        var result = pasitos.spLoginUsuario(usu, pass);

                        if (result.Count() >0)
                        {
                            FormsAuthentication.RedirectFromLoginPage(usu, false);
                        }
                        else
                        {
                            Login2.FailureText = "Contraseña Incorrecta";
                        }
                    }
                    else { Login2.FailureText = "Usuario no registrado"; }
                }
            }
            
            catch (Exception ex)
            { }
        }   
    }
}