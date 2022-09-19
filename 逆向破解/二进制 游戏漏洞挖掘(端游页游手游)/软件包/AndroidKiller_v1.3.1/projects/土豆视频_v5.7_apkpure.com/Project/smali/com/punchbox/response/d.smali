.class final Lcom/punchbox/response/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:D

.field c:J

.field d:J

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/punchbox/response/TaskInfo;


# direct methods
.method public constructor <init>(Lcom/punchbox/response/TaskInfo;Lorg/json/JSONObject;)V
    .locals 4

    iput-object p1, p0, Lcom/punchbox/response/d;->h:Lcom/punchbox/response/TaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pid"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/response/d;->a:Ljava/lang/String;

    const-string v0, "coins"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/response/d;->b:D

    const-string v0, "campaignid"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/response/d;->c:J

    const-string v0, "adid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/response/d;->d:J

    const-string/jumbo v0, "taskid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/response/d;->e:J

    const-string/jumbo v0, "taskname"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/response/d;->g:Ljava/lang/String;

    const-string/jumbo v0, "taskname"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/response/d;->f:Ljava/lang/String;

    return-void
.end method
