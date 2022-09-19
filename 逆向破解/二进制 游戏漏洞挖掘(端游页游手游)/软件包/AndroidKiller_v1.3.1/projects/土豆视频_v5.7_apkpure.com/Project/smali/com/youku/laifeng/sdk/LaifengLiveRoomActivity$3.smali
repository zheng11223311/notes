.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 336
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$902(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    .line 340
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 342
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "intent2":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v3, v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 349
    return-void
.end method
