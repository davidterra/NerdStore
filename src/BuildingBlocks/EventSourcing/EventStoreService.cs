using EventStore.ClientAPI;
using Microsoft.Extensions.Configuration;

namespace EventSourcing
{
    public class EventStoreService : IEventStoreService
    {
        private readonly IEventStoreConnection _connection;

        public EventStoreService(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("EventStoreConnection");

            var settingsBuilder = ConnectionSettings
                .Create()
                .KeepReconnecting()
                .LimitReconnectionsTo(10);

            _connection = EventStoreConnection.Create(connectionString, settingsBuilder);

            // _connection = EventStoreConnection.Create(configuration.GetConnectionString("EventStoreConnection"));
             _connection.ConnectAsync();
        }

        public IEventStoreConnection GetConnection() => _connection;

    }
}