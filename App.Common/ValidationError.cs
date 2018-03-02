using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Common
{

    public class ValidationError
    {
        public ValidationError() { }
        public string ErrorMessage { get; set; }
    }

    public class ValidationErrors : List<ValidationError>
    {

        public void Add(string errorMessage)
        {
            base.Add(new ValidationError { ErrorMessage = errorMessage });
        }

        public string Error
        {
            get
            {
                string error = "";
                this.All(a =>
                {
                    error += a.ErrorMessage;
                    return true;
                });
                #region MyRegion
                //this.ForEach(a =>
                //{
                //    error += a.ErrorMessage;                    
                //});
                #endregion
                return error;
            }
        }
    }

}
