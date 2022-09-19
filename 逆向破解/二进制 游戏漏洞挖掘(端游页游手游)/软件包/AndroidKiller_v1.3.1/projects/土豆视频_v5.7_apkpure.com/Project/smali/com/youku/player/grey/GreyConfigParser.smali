.class public Lcom/youku/player/grey/GreyConfigParser;
.super Ljava/lang/Object;
.source "GreyConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/youku/player/LogTag;->TAG_GREY:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/grey/GreyConfigParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static parseDeliver(Lcom/youku/player/grey/GreyParam;Lorg/json/JSONArray;)V
    .locals 4
    .param p0, "param"    # Lcom/youku/player/grey/GreyParam;
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 53
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 49
    const-string v2, "feature_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/youku/player/grey/GreyParam;->addDeliver(II)V

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static parseHit(Lcom/youku/player/grey/GreyParam;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "param"    # Lcom/youku/player/grey/GreyParam;
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v2, "feature_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/youku/player/grey/GreyParam;->addHit(I)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "i":I
    :cond_1
    const-string v2, "config_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/player/grey/GreyParam;->hit_config_id:I

    .line 67
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/player/grey/GreyParam;->hit_state:I

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/youku/player/grey/GreyParam;
    .locals 7
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v2, 0x0

    .line 20
    .local v2, "param":Lcom/youku/player/grey/GreyParam;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 40
    .end local v2    # "param":Lcom/youku/player/grey/GreyParam;
    .local v3, "param":Lcom/youku/player/grey/GreyParam;
    :goto_0
    return-object v3

    .line 24
    .end local v3    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v2    # "param":Lcom/youku/player/grey/GreyParam;
    :cond_0
    sget-object v4, Lcom/youku/player/grey/GreyConfigParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "object":Lorg/json/JSONObject;
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    new-instance v3, Lcom/youku/player/grey/GreyParam;

    invoke-direct {v3}, Lcom/youku/player/grey/GreyParam;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v2    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v3    # "param":Lcom/youku/player/grey/GreyParam;
    :try_start_1
    const-string v4, "hit"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/player/grey/GreyConfigParser;->parseHit(Lcom/youku/player/grey/GreyParam;Lorg/json/JSONObject;)V

    .line 33
    const-string v4, "deliver_all"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/player/grey/GreyConfigParser;->parseDeliver(Lcom/youku/player/grey/GreyParam;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v3    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v2    # "param":Lcom/youku/player/grey/GreyParam;
    :cond_1
    :goto_1
    move-object v3, v2

    .line 40
    .end local v2    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v3    # "param":Lcom/youku/player/grey/GreyParam;
    goto :goto_0

    .line 36
    .end local v3    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v2    # "param":Lcom/youku/player/grey/GreyParam;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 38
    sget-object v4, Lcom/youku/player/grey/GreyConfigParser;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v1    # "object":Lorg/json/JSONObject;
    .restart local v3    # "param":Lcom/youku/player/grey/GreyParam;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "param":Lcom/youku/player/grey/GreyParam;
    .restart local v2    # "param":Lcom/youku/player/grey/GreyParam;
    goto :goto_2
.end method
