.class Lcom/youku/laifeng/libcuteroom/service/CoreService$4;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;


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
    .line 322
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaderComplitionListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 325
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 326
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 328
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;->onDataReciveBroadListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 333
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 334
    return-void
.end method

.method public onErrorDataLoaderListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "result"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 338
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 339
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;->onErrorDataReciveBroadListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$4;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$000(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 347
    return-void
.end method
