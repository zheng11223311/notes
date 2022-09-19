.class public Lcom/punchbox/report/ReportData;
.super Ljava/lang/Object;


# static fields
.field public static final REPORT_STATUS_FAILED:I = 0x4

.field public static final REPORT_STATUS_PENDING:I = 0x0

.field public static final REPORT_STATUS_PROGRESS:I = 0x1

.field public static final REPORT_STATUS_SUCCESS:I = 0x2

.field public static final REPORT_TYPE_AD_CLICK:Ljava/lang/String; = "ClickList"

.field public static final REPORT_TYPE_AD_REQUEST:Ljava/lang/String; = "RequestList"

.field public static final REPORT_TYPE_AD_SHOW:Ljava/lang/String; = "DisplayList"

.field public static final REPORT_TYPE_APP_INFO:Ljava/lang/String; = "AppList"

.field public static final REPORT_TYPE_COUNTER_LIST:Ljava/lang/String; = "CounterList"

.field public static final REPORT_TYPE_CRASH:Ljava/lang/String; = "report_type_crash"

.field public static final REPORT_TYPE_DOWNLOAD:Ljava/lang/String; = "DownloadList"

.field public static final REPORT_TYPE_INSALL_APP:Ljava/lang/String; = "InstallationList"

.field public static final REPORT_TYPE_LOCAL_CACHE:Ljava/lang/String; = "LocalCachedList"


# instance fields
.field public createTime:J
    .annotation runtime Lcom/punchbox/v4/h/b;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/punchbox/v4/h/b;
        a = true
    .end annotation
.end field

.field public reportJsonData:Ljava/lang/String;
    .annotation runtime Lcom/punchbox/v4/h/b;
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/punchbox/v4/h/b;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/punchbox/v4/h/b;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/punchbox/v4/h/b;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportData [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/punchbox/report/ReportData;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/report/ReportData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportJsonData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/report/ReportData;->reportJsonData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/report/ReportData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/punchbox/report/ReportData;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/punchbox/report/ReportData;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
