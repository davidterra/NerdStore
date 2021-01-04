dotnet new sln --output "NerdStore" --name "NerdStore"
dotnet new classlib -f net5.0 --output ./src/Services/Catalogo/NerdStore.Catalogo.Domain --name NerdStore.Catalogo.Domain
dotnet new classlib -f net5.0 --output ./src/Services/Core/NerdStore.Core --name NerdStore.Core
dotnet sln add .\src\Services\Catalogo\NerdStore.Catalogo.Domain\NerdStore.Catalogo.Domain.csproj
dotnet sln add .\src\Services\Core\NerdStore.Core\NerdStore.Core.csproj
dotnet add reference ..\..\Core\NerdStore.Core\NerdStore.Core.csproj

dotnet new xunit --output ./Tests/NerdStore.Catalogo.Domain.Tests --name NerdStore.Catalogo.Domain.Tests
dotnet sln add ./Tests/NerdStore.Catalogo.Domain.Tests/NerdStore.Catalogo.Domain.Tests.csproj
dotnet add reference ..\..\src\Services\Catalogo\NerdStore.Catalogo.Domain\NerdStore.Catalogo.Domain.csproj
dotnet add reference ..\..\src\Services\Core\NerdStore.Core\NerdStore.Core.csproj

dotnet new classlib -f net5.0 --output ./src/Services/Catalogo/NerdStore.Catalogo.Data --name NerdStore.Catalogo.Data
dotnet sln add .\src\Services\Catalogo\NerdStore.Catalogo.Data\NerdStore.Catalogo.Data.csproj
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
dotnet add package Microsoft.EntityFrameworkCore.Relational
dotnet add reference ..\NerdStore.Catalogo.Domain\NerdStore.Catalogo.Domain.csproj
dotnet add reference ..\..\Core\NerdStore.Core\NerdStore.Core.csproj

dotnet add package mediatr
dotnet add package automapper

dotnet new classlib -f net5.0 --output ./src/Services/Catalogo/NerdStore.Catalogo.Application --name NerdStore.Catalogo.Application
dotnet sln add ./src/Services/Catalogo/NerdStore.Catalogo.Application/NerdStore.Catalogo.Application.csproj

dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection
dotnet add package MediatR.Extensions.Microsoft.DependencyInjection

dotnet new classlib -f net5.0 --output ./src/Services/Vendas/NerdStore.Vendas.Domain --name NerdStore.Vendas.Domain
dotnet new classlib -f net5.0 --output ./src/Services/Vendas/NerdStore.Vendas.Application --name NerdStore.Vendas.Application
dotnet new classlib -f net5.0 --output ./src/Services/Vendas/NerdStore.Vendas.Data --name NerdStore.Vendas.Data

dotnet sln add .\src\Services\Vendas\NerdStore.Vendas.Domain\NerdStore.Vendas.Domain.csproj
dotnet sln add .\src\Services\Vendas\NerdStore.Vendas.Application\NerdStore.Vendas.Application.csproj
dotnet sln add .\src\Services\Vendas\NerdStore.Vendas.Data\NerdStore.Vendas.Data.csproj

dotnet add reference ..\..\Core\NerdStore.Core\NerdStore.Core.csproj

dotnet new classlib -f net5.0 --output ./src/Services/Pagamentos/NerdStore.Pagamentos.Business --name NerdStore.Pagamentos.Business
dotnet new classlib -f net5.0 --output ./src/Services/Pagamentos/NerdStore.Pagamentos.Data --name NerdStore.Pagamentos.Data
dotnet new classlib -f net5.0 --output ./src/Services/Pagamentos/NerdStore.Pagamentos.AntiCorruption --name NerdStore.Pagamentos.AntiCorruption

dotnet sln add .\src\Services\Pagamentos\NerdStore.Pagamentos.Business\NerdStore.Pagamentos.Business.csproj
dotnet sln add .\src\Services\Pagamentos\NerdStore.Pagamentos.Data\NerdStore.Pagamentos.Data.csproj
dotnet sln add .\src\Services\Pagamentos\NerdStore.Pagamentos.AntiCorruption\NerdStore.Pagamentos.AntiCorruption.csproj

dotnet add package EventStore.Client
dotnet add package Microsoft.Extensions.Configuration --version 5.0.0