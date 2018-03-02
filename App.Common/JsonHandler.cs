using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App.Common
{
    public class JsonHandler
    {
        public static JsonMessage CreateMessage(int type, string message, string value)
        {
            JsonMessage json = new JsonMessage()
            {
                Type = type,
                Message = message,
                Value = value
            };
            return json;
        }
        public static JsonMessage CreateMessage(int type, string message)
        {
            JsonMessage json = new JsonMessage()
            {
                Type = type,
                Message = message,
            };
            return json;
        }
    }

    public class JsonMessage
    {
        public int Type { get; set; }
        public string Message { get; set; }
        public string Value { get; set; }
    }

}
