.class public Lcom/youku/laifeng/libcuteroom/utils/ChatRestAPI;
.super Ljava/lang/Object;
.source "ChatRestAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMessage(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "service"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .param p1, "listener"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "args"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_SEND_CHAT_MESSAGE:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-interface {p0, p1, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
