using System;
using FluentValidation.Results;
using MediatR;

namespace NerdStore.Core.Messages
{
    public class Command : Message, IRequest<bool>
    {
        public DateTime Timestamp { get; } = DateTime.Now;
        public ValidationResult ValidationResult {get;set;}

        public virtual bool IsValid() 
        {
            throw new NotImplementedException();
        }
    }
}