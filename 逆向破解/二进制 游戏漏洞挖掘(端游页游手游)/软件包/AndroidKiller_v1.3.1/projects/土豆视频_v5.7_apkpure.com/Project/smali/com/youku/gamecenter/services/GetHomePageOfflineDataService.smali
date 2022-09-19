.class public Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;
.super Lcom/youku/gamecenter/services/GetOfflineDataService;
.source "GetHomePageOfflineDataService.java"

# interfaces
.implements Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetHomePageOfflineDataService$onLoadHomePageOfflineDataListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetOfflineDataService;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 53
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v10, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;

    monitor-enter v10

    :try_start_0
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/FileUtils;->loadOfflineDataFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "offlineData":Ljava/lang/String;
    const-string v9, "offlineData"

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 66
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v9, "home_page_offline_data_end_page"

    const/4 v11, 0x0

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 69
    .local v1, "endPage":I
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, "newData":Lorg/json/JSONObject;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "tabs"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 72
    :cond_0
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v11, "home_page_offline_data_end_page"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    invoke-static {p0, p1, p2}, Lcom/youku/gamecenter/util/FileUtils;->saveOfflineDataFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v4    # "newData":Lorg/json/JSONObject;
    :goto_0
    monitor-exit v10

    return-void

    .line 77
    .restart local v4    # "newData":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v7, "oldData":Lorg/json/JSONObject;
    const-string v9, "boxes"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 79
    .local v6, "oldArray":Lorg/json/JSONArray;
    const-string v9, "boxes"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 81
    .local v3, "newArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 82
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v11, "home_page_offline_data_end_page"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v9, v11, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/youku/gamecenter/util/FileUtils;->saveOfflineDataFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    .end local v3    # "newArray":Lorg/json/JSONArray;
    .end local v4    # "newData":Lorg/json/JSONObject;
    .end local v6    # "oldArray":Lorg/json/JSONArray;
    .end local v7    # "oldData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "endPage":I
    .end local v5    # "offlineData":Ljava/lang/String;
    .end local v8    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method


# virtual methods
.method public onHandleSaveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1, p2, p3}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onLoadOfflineDataFinish()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->mOfflienServiceListener:Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService$onLoadHomePageOfflineDataListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/HomePageInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService$onLoadHomePageOfflineDataListener;->onLoadOfflineDataFinish(Lcom/youku/gamecenter/data/HomePageInfo;)V

    .line 44
    return-void
.end method

.method public parseOfflineData(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 33
    const-string v1, "PlayFlow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": jsonObject is null! json name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->getHomePageInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/HomePageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method

.method public saveStringToTxt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "saveData"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p0}, Lcom/youku/gamecenter/services/GetOfflineDataService;->saveStringToTxt(Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;)V

    .line 26
    return-void
.end method
