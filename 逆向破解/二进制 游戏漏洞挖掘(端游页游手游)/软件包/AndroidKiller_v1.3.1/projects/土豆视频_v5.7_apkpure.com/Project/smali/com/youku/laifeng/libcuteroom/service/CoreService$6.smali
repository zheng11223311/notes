.class Lcom/youku/laifeng/libcuteroom/service/CoreService$6;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;


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
    .line 469
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .prologue
    .line 486
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 487
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    invoke-interface {v3, p1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;->onDownloadComplition(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 494
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 495
    return-void
.end method

.method public onEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .prologue
    .line 499
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 500
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 502
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    invoke-interface {v3, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;->onDownloadStatusEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 507
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 508
    return-void
.end method

.method public onProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 473
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 474
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 476
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    invoke-interface {v3, p1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;->onDownloadProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 481
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$6;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 482
    return-void
.end method
