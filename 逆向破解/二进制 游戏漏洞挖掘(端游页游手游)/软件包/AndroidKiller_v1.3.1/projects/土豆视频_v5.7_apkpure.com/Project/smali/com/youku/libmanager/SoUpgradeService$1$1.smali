.class Lcom/youku/libmanager/SoUpgradeService$1$1;
.super Ljava/lang/Object;
.source "SoUpgradeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/libmanager/SoUpgradeService$1;->startDownloadSo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/libmanager/SoUpgradeService$1;

.field final synthetic val$soName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeService$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iput-object p2, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->val$soName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->val$soName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/libmanager/SoUpgradeService$1;->isSoDownloaded(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v6

    .line 152
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "SoUpgradeService"

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->access$000(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->val$soName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    .line 155
    .local v9, "singleSoDownloadTask":Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
    if-eqz v9, :cond_3

    .line 156
    invoke-static {v9}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$100(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    move-result-object v0

    sget-object v1, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADING:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    if-ne v0, v1, :cond_2

    .line 157
    const-string v0, "SoUpgradeService"

    const-string/jumbo v1, "startDownloadSo mDownloadState==DownloadSate.DOWNLOADING return"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v9}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->startDownload()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-virtual {v0}, Lcom/youku/libmanager/SoUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->getTimeStamp(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    .line 164
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->access$200(Lcom/youku/libmanager/SoUpgradeService;)Z

    .line 165
    const-class v0, Lcom/youku/player/network/IHttpRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/network/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/player/network/IHttpRequest;

    .line 167
    .local v8, "httpRequest":Lcom/youku/player/network/IHttpRequest;
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v0, v0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->access$300(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v2, v2, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v2}, Lcom/youku/libmanager/SoUpgradeService;->access$400(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v3, v3, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3}, Lcom/youku/libmanager/SoUpgradeService;->access$500(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/youku/libmanager/SoUpgradeService;->pid:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v5, v5, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService;->access$600(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/youku/libmanager/UrlUtils;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "url":Ljava/lang/String;
    const-string v0, "SoUpgradeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v7, Lcom/youku/player/network/HttpIntent;

    invoke-direct {v7, v10}, Lcom/youku/player/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v7, "httpIntent":Lcom/youku/player/network/HttpIntent;
    if-eqz v8, :cond_0

    .line 172
    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeService$1$1$1;-><init>(Lcom/youku/libmanager/SoUpgradeService$1$1;)V

    invoke-interface {v8, v7, v0}, Lcom/youku/player/network/IHttpRequest;->request(Lcom/youku/player/network/HttpIntent;Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;)V

    goto/16 :goto_0

    .line 198
    .end local v7    # "httpIntent":Lcom/youku/player/network/HttpIntent;
    .end local v8    # "httpRequest":Lcom/youku/player/network/IHttpRequest;
    .end local v10    # "url":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1;->val$soName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/libmanager/SoUpgradeService$1;->access$900(Lcom/youku/libmanager/SoUpgradeService$1;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
