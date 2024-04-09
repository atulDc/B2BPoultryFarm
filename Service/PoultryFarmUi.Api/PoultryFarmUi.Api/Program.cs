using System.Reflection;
using Common.DalPlatform;
using Farm.BplLayer.BplInterfaces;
using Farm.BplLayer.Services;
using Farm.DalLayer.DalInterfaces;
using Farm.DalLayer.DataAccessObjects;
using PoultryFarmUi.Api.Extensions;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var configuration = builder.Configuration;
configuration.AddJsonFile($"{System.IO.Path.GetDirectoryName(Assembly.GetEntryAssembly().Location)}\\appsettings.json", optional: false, reloadOnChange: true);
builder.Services.Configure<DBSettings>(configuration.GetSection("DBSettings"));
builder.Services.AddControllers();
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowConsumerFarmUI",
        policy =>
        {
            policy.WithOrigins("http://localhost:4200")
                   .AllowAnyHeader()
                   .AllowAnyMethod();
        });
});

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
builder.Services.AddScoped<IDataAccess, DataAccessLayer>();
builder.Services.AddScoped<IDashboardDataAccess, DashboardDataAccess>();
builder.Services.AddScoped<IDashboardSvc, DashboardSvc>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    app.UseSwagger();
    app.UseSwaggerUI();
}
else
{
    app.UseGlobalException();
}

app.UseHttpsRedirection();
app.UseRouting();

app.UseCors("AllowConsumerFarmUI");

app.UseAuthorization();

app.MapControllers();

app.Run();
