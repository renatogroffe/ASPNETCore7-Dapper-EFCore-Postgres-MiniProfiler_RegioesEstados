using APIRegioes.Data;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
var isDevelopment = builder.Environment.IsDevelopment();

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped<RegioesRepository>();

builder.Services.AddDbContext<RegioesContext>(options =>
{
    options.UseNpgsql(
        builder.Configuration.GetConnectionString("BaseDadosGeograficos")!);
    if (isDevelopment)
        options.EnableSensitiveDataLogging();
});

if (isDevelopment)
    builder.Services.AddMiniProfiler(options =>
        options.RouteBasePath = "/profiler").AddEntityFramework();

var app = builder.Build();

if (isDevelopment)
{
    var logger = app.Logger;
    logger.LogInformation("Ativando o middleware do MiniProfiler...");

    // Rotas poss�veis com a configura��o do MiniProfiler:
    logger.LogInformation("MiniProfiler - �ltima opera��o: /profiler/results");
    logger.LogInformation("MiniProfiler - Listagem de todas as opera��es: /profiler/results-index");
    logger.LogInformation("MiniProfiler - Opera��o espec�fica: /profiler/results?id=<Guid Profiler>");

    app.UseMiniProfiler();
}

app.UseSwagger();
app.UseSwaggerUI();

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();