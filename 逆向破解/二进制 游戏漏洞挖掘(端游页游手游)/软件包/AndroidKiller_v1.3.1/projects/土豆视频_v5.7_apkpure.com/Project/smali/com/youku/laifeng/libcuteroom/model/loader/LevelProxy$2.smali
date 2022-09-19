.class Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$2;
.super Ljava/lang/Object;
.source "LevelProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$2;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$2;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->access$302(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 78
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$2;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->access$400(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 84
    return-void
.end method
