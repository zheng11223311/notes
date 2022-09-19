.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;
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
    .line 310
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$502(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 314
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 319
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$702(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z

    .line 331
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    .line 332
    return-void
.end method
