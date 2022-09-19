.class public final Lcom/punchbox/response/TaskInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/punchbox/response/d;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/punchbox/response/TaskInfo;->a:I

    const-string/jumbo v0, "trackid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/punchbox/response/TaskInfo;->b:I

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/punchbox/response/TaskInfo;->c:I

    new-instance v0, Lcom/punchbox/response/d;

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/punchbox/response/d;-><init>(Lcom/punchbox/response/TaskInfo;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    return-void
.end method


# virtual methods
.method public getAdID()J
    .locals 2

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    iget-wide v0, v0, Lcom/punchbox/response/d;->d:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCoins()D
    .locals 2

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    iget-wide v0, v0, Lcom/punchbox/response/d;->b:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getParams()Lcom/punchbox/response/d;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/punchbox/response/TaskInfo;->a:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/punchbox/response/TaskInfo;->c:I

    return v0
.end method

.method public getTaskID()J
    .locals 2

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/response/TaskInfo;->d:Lcom/punchbox/response/d;

    iget-wide v0, v0, Lcom/punchbox/response/d;->e:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTrackid()I
    .locals 1

    iget v0, p0, Lcom/punchbox/response/TaskInfo;->b:I

    return v0
.end method
