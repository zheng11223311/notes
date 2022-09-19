.class public Lcom/youku/analytics/utils/StorageTools;
.super Ljava/lang/Object;
.source "StorageTools.java"


# static fields
.field private static final ANALYTICS_AGENT_CACHE:Ljava/lang/String; = "analytics_agent_cache_"

.field private static final ANALYTICS_AGENT_HEADER:Ljava/lang/String; = "analytics_agent_header_"

.field private static final ANALYTICS_AGENT_STATE:Ljava/lang/String; = "analytics_agent_state_"

.field private static final COUNTER_CACHE:Ljava/lang/String; = "counter"

.field private static final NUMBER:Ljava/lang/String; = "n2"

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 133
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 132
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/utils/StorageTools;->sdf:Ljava/text/SimpleDateFormat;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deleteCache(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-class v1, Lcom/youku/analytics/utils/StorageTools;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/youku/analytics/utils/StorageTools;->getCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static eliminateExcess(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 153
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 154
    .local v3, "suitableArr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 155
    .local v2, "length":I
    const/4 v4, 0x0

    .line 156
    .local v4, "temp":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 157
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 168
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "temp":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .restart local v4    # "temp":Lorg/json/JSONObject;
    invoke-static {v4, v3}, Lcom/youku/analytics/DataCollection;->writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 171
    .end local v1    # "i":I
    :cond_1
    return-object v4

    .line 159
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    if-eqz v4, :cond_3

    .line 161
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 162
    sget v5, Lcom/youku/analytics/Constants;->cacheSize:I

    if-gt v2, v5, :cond_0

    .line 165
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAgentState(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "analytics_agent_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getCacheFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/youku/analytics/utils/Tools;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const/16 v1, 0x3a

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "analytics_agent_cache_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "analytics_agent_cache_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCounterFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-static {p0}, Lcom/youku/analytics/utils/Tools;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    const/16 v1, 0x3a

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "counter_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "counter"

    goto :goto_0
.end method

.method public static getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "analytics_agent_header_"

    .line 77
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public static declared-synchronized getLocalCache(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 89
    const-class v6, Lcom/youku/analytics/utils/StorageTools;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/youku/analytics/utils/StorageTools;->getCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 91
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/youku/analytics/utils/FileOperation;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 94
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    move-object v3, v5

    .line 103
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v3

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {p0}, Lcom/youku/analytics/utils/StorageTools;->deleteCache(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    move-object v3, v5

    .line 103
    goto :goto_0

    .line 89
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized readAndWriteToLocal(Landroid/content/Context;Lorg/json/JSONObject;ZZ)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "isNeedSort"    # Z
    .param p3, "isTest"    # Z

    .prologue
    .line 254
    const-class v10, Lcom/youku/analytics/utils/StorageTools;

    monitor-enter v10

    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    monitor-exit v10

    return-void

    .line 258
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/youku/analytics/utils/Tools;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 257
    invoke-static {p0, v9}, Lcom/youku/analytics/utils/StorageTools;->getLocalCache(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 259
    .local v6, "localJSON":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 260
    invoke-static {v6}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    .line 261
    .local v5, "localArray":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/youku/analytics/DataCollection;->readAction(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v8

    .line 262
    .local v8, "writeArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    if-eqz v8, :cond_2

    .line 263
    const/4 v7, 0x0

    .line 264
    .local v7, "saveArray":Lorg/json/JSONArray;
    if-eqz p2, :cond_5

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "isNeedSort:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 266
    invoke-static {v8, v5}, Lcom/youku/analytics/utils/StorageTools;->sortJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v7

    .line 272
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local p1    # "json":Lorg/json/JSONObject;
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {v4, v7}, Lcom/youku/analytics/DataCollection;->writeAction(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v4

    .line 279
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "localArray":Lorg/json/JSONArray;
    .end local v6    # "localJSON":Lorg/json/JSONObject;
    .end local v7    # "saveArray":Lorg/json/JSONArray;
    .end local v8    # "writeArray":Lorg/json/JSONArray;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "cached when write:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/youku/analytics/utils/Tools;->getJSONSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    sget v11, Lcom/youku/analytics/Constants;->cacheSize:I

    if-le v9, v11, :cond_3

    .line 281
    const-string v9, "Cache size exceeded,eliminate excess"

    invoke-static {v9}, Lcom/youku/analytics/common/Log;->w(Ljava/lang/String;)I

    .line 282
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->eliminateExcess(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 284
    :cond_3
    invoke-static {p0}, Lcom/youku/analytics/utils/StorageTools;->getCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 286
    .local v1, "file":Ljava/io/File;
    if-eqz p3, :cond_4

    .line 287
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->saveToDisk(Lorg/json/JSONObject;)V

    .line 288
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/youku/analytics/utils/FileOperation;->write(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "save json:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 290
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "cache buffer success:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/youku/analytics/utils/Tools;->getJSONSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 254
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_3
    monitor-exit v10

    throw v9

    .line 268
    .restart local v5    # "localArray":Lorg/json/JSONArray;
    .restart local v6    # "localJSON":Lorg/json/JSONObject;
    .restart local v7    # "saveArray":Lorg/json/JSONArray;
    .restart local v8    # "writeArray":Lorg/json/JSONArray;
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_6

    .line 270
    move-object v7, v5

    goto/16 :goto_1

    .line 269
    :cond_6
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 276
    .end local v3    # "i":I
    .end local v5    # "localArray":Lorg/json/JSONArray;
    .end local v6    # "localJSON":Lorg/json/JSONObject;
    .end local v7    # "saveArray":Lorg/json/JSONArray;
    .end local v8    # "writeArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lorg/json/JSONException;
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 276
    .end local v0    # "e":Lorg/json/JSONException;
    .end local p1    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "localArray":Lorg/json/JSONArray;
    .restart local v6    # "localJSON":Lorg/json/JSONObject;
    .restart local v7    # "saveArray":Lorg/json/JSONArray;
    .restart local v8    # "writeArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object p1, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local p1    # "json":Lorg/json/JSONObject;
    goto :goto_5

    .line 254
    .end local p1    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catchall_1
    move-exception v9

    move-object p1, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local p1    # "json":Lorg/json/JSONObject;
    goto :goto_3
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "analytics_agent_header_"

    .line 66
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method private static saveToDisk(Lorg/json/JSONObject;)V
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/youku/analytics/utils/StorageTools;->sdf:Ljava/text/SimpleDateFormat;

    .line 138
    sget-object v2, Lcom/youku/analytics/utils/StorageTools;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 141
    const-string v3, "YoukuAnalytics_Save"

    .line 140
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, "sdFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/analytics/utils/FileOperation;->appendWrite(Ljava/io/File;Ljava/lang/String;)Z

    .line 143
    return-void
.end method

.method public static sortJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9
    .param p0, "writeArray"    # Lorg/json/JSONArray;
    .param p1, "localArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 186
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 187
    :cond_0
    const/4 v6, 0x0

    .line 213
    :cond_1
    return-object v6

    .line 188
    :cond_2
    const/4 v6, 0x0

    .line 189
    .local v6, "saveArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 190
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    .local v0, "firstJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 192
    const-string v8, "n2"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "firstNumber":I
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "saveArray":Lorg/json/JSONArray;
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .restart local v6    # "saveArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 195
    .local v2, "i":I
    const/4 v3, 0x0

    .line 196
    .local v3, "isAdded":Z
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_3

    .line 206
    if-nez v3, :cond_1

    .line 207
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 208
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 198
    .local v7, "temp":Lorg/json/JSONObject;
    const-string v8, "n2"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 199
    .local v5, "number":I
    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    if-ge v5, v1, :cond_4

    .line 200
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v4, v8, :cond_5

    .line 202
    const/4 v3, 0x1

    .line 204
    .end local v4    # "j":I
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .restart local v4    # "j":I
    :cond_5
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static declared-synchronized writeToLocal(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "isTest"    # Z

    .prologue
    .line 225
    const-class v3, Lcom/youku/analytics/utils/StorageTools;

    monitor-enter v3

    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 227
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cached when write:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/analytics/utils/Tools;->getJSONSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    sget v4, Lcom/youku/analytics/Constants;->cacheSize:I

    if-le v2, v4, :cond_2

    .line 229
    const-string v2, "Cache size exceeded,eliminate excess"

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->w(Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->eliminateExcess(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 232
    :cond_2
    invoke-static {p0}, Lcom/youku/analytics/utils/StorageTools;->getCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 234
    .local v0, "file":Ljava/io/File;
    if-eqz p2, :cond_3

    .line 235
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->saveToDisk(Lorg/json/JSONObject;)V

    .line 236
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/analytics/utils/FileOperation;->write(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save json:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cache buffer success:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/analytics/utils/Tools;->getJSONSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
