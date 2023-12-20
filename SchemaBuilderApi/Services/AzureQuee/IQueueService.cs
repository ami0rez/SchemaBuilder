
namespace SchemaBuilder.Api.Services.AzureQuee
{
    public interface IQueueService
    {
        Task EnqueueMessageAsync(string message);
    }
}