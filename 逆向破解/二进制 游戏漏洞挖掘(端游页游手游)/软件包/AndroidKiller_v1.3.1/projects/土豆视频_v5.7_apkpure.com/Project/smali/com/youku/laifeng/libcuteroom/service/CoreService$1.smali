.class Lcom/youku/laifeng/libcuteroom/service/CoreService$1;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;
.source "CoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/service/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public broadRequestData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "restAPI"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$100(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public cancelRequestDataGroupById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->cancelGroupTaskById(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public clearStarInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->clear()V

    .line 173
    return-void
.end method

.method public directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "restApi"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public directRequestDataByAsynWithContent(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "restApi"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "bigArgs"    # Ljava/lang/String;
    .param p5, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public directRequestDataGroupByAsynWithContent(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p3, "ccb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;
    .param p4, "restApi"    # Ljava/lang/String;
    .param p5, "args"    # Ljava/lang/String;
    .param p6, "bigArgs"    # Ljava/lang/String;
    .param p7, "cookie"    # Ljava/lang/String;
    .param p8, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertGroupTask(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public directRequestDataWithCookie(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "restApi"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public directRequestDataWithCookieContent(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "restApi"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "bigArgs"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;
    .param p6, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public getGiftConfig()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getMultiConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGiftMap()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getGiftMap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 1
    .param p1, "restApi"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 1
    .param p1, "restApi"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "bigArgs"    # Ljava/lang/String;
    .param p4, "httpType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRoomGiftConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "roomId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getAllRoomGiftConfig()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getRoomGiftConfigByRoomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShowResources()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getShowResources()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, ""

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getShowResources()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStarInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getUserStarInfoStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, ""

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->getUserStarInfoStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .locals 1
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->builderBeanUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallback(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public setBase(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->setBASE(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public setTokenAndKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->setToken(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->setKey(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public unregisterCallback(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$1;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public updateUserCoins(Ljava/lang/String;)V
    .locals 2
    .param p1, "coins"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    const-string v1, "coins"

    invoke-virtual {v0, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->updateUserInfoByKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public updateUserFaceUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "faceUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    move-result-object v0

    const-string v1, "faceUrl"

    invoke-virtual {v0, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->updateUserInfoByKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method
