using Azure;
using Azure.Storage.Queues;
using System.Text;
using System.Text.RegularExpressions;

namespace SchemaBuilder.Api.Services.AzureQuee
{
    public class QueueService : IQueueService
    {
        private readonly QueueServiceClient _queueServiceClient;
        private readonly QueueClient _queueClient;
        private readonly QueueClient _jsonDataQueueClient;

        public QueueService(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("AzureStorageConnectionString");
            string queueName = configuration.GetValue<string>("QueueName");
            string jsonDataQueueName = configuration.GetValue<string>("JsonDataQueueName");

            _queueServiceClient = new QueueServiceClient(connectionString);
            _queueClient = _queueServiceClient.GetQueueClient(queueName);
            _jsonDataQueueClient = _queueServiceClient.GetQueueClient(jsonDataQueueName);
        }

        public async Task EnqueueMessageAsync(string message)
        {
            try
            {
                var messageBytes = Encoding.UTF8.GetBytes(message);
                var response = await _queueClient.SendMessageAsync(Convert.ToBase64String(messageBytes));
            }
            catch (RequestFailedException ex)
            {
                Console.WriteLine("Error sending message: {0}", ex.Message);
            }
        }

        public async Task EnqueueJsonDataMessageAsync(string message)
        {
            try
            {
                var messageBytes = Encoding.UTF8.GetBytes(message);
                var response = await _jsonDataQueueClient.SendMessageAsync(Convert.ToBase64String(messageBytes));
            }
            catch (RequestFailedException ex)
            {
                Console.WriteLine("Error sending message: {0}", ex.Message);
            }
        }
    }
}
