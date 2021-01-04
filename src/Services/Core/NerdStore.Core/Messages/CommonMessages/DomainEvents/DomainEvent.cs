using System;
using MediatR;

namespace NerdStore.Core.Messages.CommonMessages.DomainEvents
{
    public abstract class DomainEvent : Message, INotification
    {
        public DateTime Timestamp { get; private set; } = DateTime.Now;
        protected DomainEvent(Guid aggregateId) => AggregateId = aggregateId;
                                    
    }
}