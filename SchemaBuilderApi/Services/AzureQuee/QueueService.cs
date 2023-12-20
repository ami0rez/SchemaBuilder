using Azure;
using Azure.Storage.Queues;

namespace SchemaBuilder.Api.Services.AzureQuee
{
    public class QueueService : IQueueService
    {
        private readonly QueueServiceClient _queueServiceClient;
        private readonly QueueClient _queueClient;

        public QueueService(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("AzureStorageConnectionString");
            string queueName = configuration.GetValue<string>("QueueName");

            _queueServiceClient = new QueueServiceClient(connectionString);
            _queueClient = _queueServiceClient.GetQueueClient(queueName);
        }

        public async Task EnqueueMessageAsync(string message)
        {
            try
            {
                await _queueClient.SendMessageAsync(message);
            }
            catch (RequestFailedException ex)
            {
                Console.WriteLine("Error sending message: {0}", ex.Message);
            }
        }
    }
}
