.class public Lcom/youku/analytics/data/PlayRequestData;
.super Lcom/youku/analytics/data/PlayActionData;
.source "PlayRequestData.java"


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V
    .locals 0
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "data"    # Lcom/youku/analytics/data/ActionBaseData;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/youku/analytics/data/PlayActionData;-><init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V

    .line 8
    return-void
.end method


# virtual methods
.method public write(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/youku/analytics/data/PlayActionData;->write(Lorg/json/JSONObject;)V

    .line 13
    const-string v0, "p2"

    iget-object v1, p0, Lcom/youku/analytics/data/PlayRequestData;->mPlaytype:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    return-void
.end method
