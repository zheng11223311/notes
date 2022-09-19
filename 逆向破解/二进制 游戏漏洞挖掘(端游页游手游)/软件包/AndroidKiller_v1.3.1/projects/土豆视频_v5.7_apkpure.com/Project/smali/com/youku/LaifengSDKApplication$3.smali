.class Lcom/youku/LaifengSDKApplication$3;
.super Ljava/lang/Object;
.source "LaifengSDKApplication.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/LaifengSDKApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/LaifengSDKApplication;


# direct methods
.method constructor <init>(Lcom/youku/LaifengSDKApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/LaifengSDKApplication;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/youku/LaifengSDKApplication$3;->this$0:Lcom/youku/LaifengSDKApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaderComplitionListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 8
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 253
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_SWITCH_ENTER_LIVE_ROOM:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    :try_start_0
    const-string v5, "LaifengSDKApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataLoaderComplitionListener[]>>>>res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    .local v3, "jsonBody":Lorg/json/JSONObject;
    const-string/jumbo v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 258
    .local v4, "response":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 259
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "code":Ljava/lang/String;
    const-string v5, "SUCCESS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 262
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v5, "sdk"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/youku/LaifengSDKApplication;->access$302(Z)Z

    .line 263
    const-string v5, "LaifengSDKApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data loader listener switch enter room status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->access$300()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jsonBody":Lorg/json/JSONObject;
    .end local v4    # "response":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onErrorDataLoaderListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 274
    const-string v0, "LaifengSDKApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorDataLoaderListener[]>>>>url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method
