# NerdStore

Projeto de acompanhamento do curso Modelagem de Domínios Ricos ministrado pelo Professor Eduardo Pires.

# Criando o projeto para trabalhar no vscode via CLI.

tree /f

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
