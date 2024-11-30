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

//���ݿ�������
builder.Services.AddDbContext<DailyDbContext>(m => m.UseSqlServer(builder.Configuration.GetConnectionString("ConnStr")));

//autoapper
builder.Services.AddAutoMapper(typeof(AutoMapperSettings));

// ����˲ʱ�������Ի���
builder.Services.AddDbContext<DailyDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection"),
        sqlOptions => sqlOptions.EnableRetryOnFailure(
            maxRetryCount: 5,          // ������Դ���
            maxRetryDelay: TimeSpan.FromSeconds(10),  // ÿ�����Լ������ӳ�ʱ��
            errorNumbersToAdd: null    // ������룬�����Ҫ�ض��Ŀ����Զ���
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
