using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Formularios
{
    public partial class Formulario2 : System.Web.UI.Page
    {
        string NombreUsuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            CargarGrilla();

        }

        protected void CargarGrilla() {
            HttpCookie cookie = Request.Cookies["NombreUsuario"];
            NombreUsuario = cookie != null ? cookie.Value : "NOCookie";
            string path = $"{Server.MapPath(".")}/{NombreUsuario}";
            if (Directory.Exists(path)) {
                string[] files = Directory.GetFiles(path);
                List<Archivo> fileList = new List<Archivo>();


                foreach (string file in files)
                {
                    var newFile = new Archivo(Path.GetFileName(file),file);
                    fileList.Add(newFile);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string path = $"{Server.MapPath(".")}/{NombreUsuario}";
            if (FileUpload1.HasFile) {
                if (!Directory.Exists(path)) {
                    Directory.CreateDirectory(path);
                }

                foreach (HttpPostedFile file in FileUpload1.PostedFiles) {

                    FileUpload1.SaveAs($"{path}/{file.FileName}");
                }
            }else LabelError.Text = "seleccione un archivo";


            CargarGrilla();
        }
        protected void DescargarGridView_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e) {
            if (e.CommandName == "Descargar") {
                
                GridViewRow fileInRow = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = fileInRow.Cells[2].Text;

                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("Content-Disposition","attachment; fileName=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();

            }
        }
        
    }
}