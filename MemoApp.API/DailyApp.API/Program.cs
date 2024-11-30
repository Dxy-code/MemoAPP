using DailyApp.API.AutoMappers;
using DailyApp.API.DataModel;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(m =>
{
    string path = AppContext.BaseDirectory + "DailyApp.API.xml";
    m.IncludeXmlComments(path, true);
});

//数据库上下文
builder.Services.AddDbContext<DailyDbContext>(m => m.UseSqlServer(builder.Configuration.GetConnectionString("ConnStr")));

//autoapper
builder.Services.AddAutoMapper(typeof(AutoMapperSettings));

// 启用瞬时错误重试机制
builder.Services.AddDbContext<DailyDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection"),
        sqlOptions => sqlOptions.EnableRetryOnFailure(
            maxRetryCount: 5,          // 最大重试次数
            maxRetryDelay: TimeSpan.FromSeconds(10),  // 每次重试间的最大延迟时间
            errorNumbersToAdd: null    // 错误代码，如果需要特定的可以自定义
        )
    )
);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{

}
app.UseSwagger();
app.UseSwaggerUI();

app.UseAuthorization();

app.MapControllers();

app.Run();
