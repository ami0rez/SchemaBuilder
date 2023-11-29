using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Net.Http;

namespace ClientWeb.Utils
{
    public class FileStreamingResult : ActionResult
    {
        private readonly string _filePath;
        private readonly string _contentType;

        public FileStreamingResult(string filePath, string contentType)
        {
            _filePath = filePath;
            _contentType = contentType;
        }

        public override async Task ExecuteResultAsync(ActionContext context)
        {
            var response = context.HttpContext.Response;
            response.ContentType = _contentType;

            try
            {
                using (var httpClient = new HttpClient())
                {
                    try
                    {
                        var fileStream = await httpClient.GetStreamAsync(_filePath);
                        await fileStream.CopyToAsync(response.Body);
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here, e.g., log the error.
                        // You can also set the response status code to indicate a server error if needed.
                        response.StatusCode = (int)HttpStatusCode.InternalServerError;
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions here, e.g., log the error.
                // You can also set the response status code to indicate a server error if needed.
                response.StatusCode = (int)HttpStatusCode.InternalServerError;
            }
        }
    }
}
