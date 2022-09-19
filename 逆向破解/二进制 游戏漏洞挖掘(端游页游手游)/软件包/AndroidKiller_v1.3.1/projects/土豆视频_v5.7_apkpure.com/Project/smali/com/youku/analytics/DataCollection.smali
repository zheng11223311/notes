.class public Lcom/youku/analytics/DataCollection;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field private static final ACITON:Ljava/lang/String; = "a"


# instance fields
.field private mAcitonData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/analytics/common/IOJson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    const-string v2, "a"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    :try_start_0
    const-string v2, "a"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 97
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 104
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 104
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 115
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addActionToList(Lcom/youku/analytics/common/IOJson;)V
    .locals 1
    .param p1, "ioJson"    # Lcom/youku/analytics/common/IOJson;

    .prologue
    .line 23
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(Lcom/youku/analytics/DataCollection;)V
    .locals 2
    .param p1, "collection"    # Lcom/youku/analytics/DataCollection;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    iget-object v1, p1, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/youku/analytics/DataCollection;->write(Lorg/json/JSONObject;)V

    .line 77
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-lez v3, :cond_0

    move-object v1, v2

    .line 83
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "Fail to write json..."

    invoke-static {v3}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public declared-synchronized getDataSize()I
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 52
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    .line 48
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/analytics/common/IOJson;

    .line 49
    .local v0, "action":Lcom/youku/analytics/common/IOJson;
    invoke-interface {v0}, Lcom/youku/analytics/common/IOJson;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const/4 v1, 0x0

    goto :goto_0

    .line 48
    .end local v0    # "action":Lcom/youku/analytics/common/IOJson;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public declared-synchronized setSession(Ljava/lang/String;J)V
    .locals 4
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/analytics/common/IOJson;

    .line 124
    .local v0, "action":Lcom/youku/analytics/common/IOJson;
    invoke-interface {v0, p1, p2, p3}, Lcom/youku/analytics/common/IOJson;->setSession(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "action":Lcom/youku/analytics/common/IOJson;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 30
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 31
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 36
    const-string v3, "a"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "actionJSON":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/youku/analytics/DataCollection;->mAcitonData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/analytics/common/IOJson;

    invoke-interface {v3, v0}, Lcom/youku/analytics/common/IOJson;->write(Lorg/json/JSONObject;)V

    .line 34
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 29
    .end local v0    # "actionJSON":Lorg/json/JSONObject;
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
