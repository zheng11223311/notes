.class public Lcom/youku/player/module/ParseJson;
.super Ljava/lang/Object;
.source "ParseJson.java"


# instance fields
.field protected jsonObject:Lorg/json/JSONObject;

.field private jsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/youku/player/module/ParseJson;->jsonString:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public parseResponseFailCode()I
    .locals 3

    .prologue
    .line 27
    const/4 v0, -0x5

    .line 28
    .local v0, "code":I
    iget-object v1, p0, Lcom/youku/player/module/ParseJson;->jsonString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29
    const/4 v1, -0x6

    .line 37
    :goto_0
    return v1

    .line 32
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/youku/player/module/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/player/module/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lcom/youku/player/module/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_1

    .line 34
    :catch_1
    move-exception v1

    goto :goto_1
.end method
