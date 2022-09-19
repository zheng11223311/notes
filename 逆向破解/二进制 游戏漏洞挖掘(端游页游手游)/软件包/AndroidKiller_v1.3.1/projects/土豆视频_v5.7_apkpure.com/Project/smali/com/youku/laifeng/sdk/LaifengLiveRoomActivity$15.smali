.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1338
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1340
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$3600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_GET:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
