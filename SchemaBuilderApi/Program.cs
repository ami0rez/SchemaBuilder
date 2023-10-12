using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using SchemaBuilder.Api.Services;
using SchemaBuilder.Api.Services.Categories;
using SchemaBuilder.Api.Services.SchemaPropertys;
using SchemaBuilder.Api.Services.WebsiteGroupSchemas;
using SchemaBuilder.Api.Services.WebsiteSections;
using SchemaBuilder.Infrastruction.Data.Contexts;
using SchemaBuilder.Infrastruction.Repositories;
using SchemaBuilder.Infrastruction.Repositories.Categories;
using SchemaBuilder.Infrastruction.Repositories.WebsiteGroupSchemas;
using SchemaBuilder.Infrastruction.Repositories.WebsiteSections;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers()
            .AddNewtonsoftJson(options =>
            {
                options.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                // Add other serializer settings as needed
            });
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
var originName = "CorsPolicy";

builder.Services.AddDbContext<ApplicationDBContext>(opt =>
{
    opt.UseInMemoryDatabase("FakeDB");
});

builder.Services.AddScoped<ISchemaRepository, SchemaRepository>();
builder.Services.AddScoped<ISchemaService, SchemaService>();

builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
builder.Services.AddScoped<ICategoryService, CategoryService>();

builder.Services.AddScoped<IWebsiteSectionRepository, WebsiteSectionRepository>();
builder.Services.AddScoped<IWebsiteSectionService, WebsiteSectionService>();

builder.Services.AddScoped<IWebsiteGroupSchemaService, WebsiteGroupSchemaService>();
builder.Services.AddScoped<IWebsiteGroupSchemasRepository, WebsiteGroupSchemasRepository>();

builder.Services.AddScoped<ISchemaPropertyService, SchemaPropertyService>();
builder.Services.AddScoped<ISchemaPropertyRepository, SchemaPropertyRepository>();

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: originName,
        policy =>
        {
            policy.WithOrigins("https://localhost:7115", "https://localhost:7042").AllowAnyMethod().AllowAnyHeader().AllowCredentials();
        });
});



var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseCors(originName);

app.UseAuthorization();

app.MapControllers();

app.Run();
