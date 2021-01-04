using System;

namespace NerdStore.Core.Data.EventSourcing
{
    public class StoredEvent
    {
        public StoredEvent(Guid id, string tipo, DateTime dataOcorrencia, string dados)
        {
            Id = id;
            Tipo = tipo;
            DataOcorrencia = dataOcorrencia;
            Dados = dados;
        }

        public Guid Id { get; private set; }

        // É a classe
        public string Tipo { get; private set; }

        public DateTime DataOcorrencia { get; set; }

        // É o json da Classe
        public string Dados { get; private set; }
    }
}