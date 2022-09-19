.class Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;
.source "DataLoadCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;

    .prologue
    .line 83
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;"
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;"
    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v8, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v0, "sign"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "sign":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v7    # "sign":Ljava/lang/String;
    .end local v8    # "tmp":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Lorg/json/JSONException;
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable$1;"
    return-void
.end method
