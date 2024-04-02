using System.Reflection;
using Common.DalPlatform;
using Farm.DalLayer.DalInterfaces;
using Farm.DalLayer.DataAccessObjects;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var configuration = builder.Configuration;
configuration.AddJsonFile($"{System.IO.Path.GetDirectoryName(Assembly.GetEntryAssembly().Location)}\\appsettings.json", optional: false, reloadOnChange: true);
builder.Services.Configure<DBSettings>(configuration.GetSection("DBSettings"));
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<IDataAccess, DataAccessLayer>();
builder.Services.AddScoped<IDashboardDataAccess, DashboardDataAccess>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
