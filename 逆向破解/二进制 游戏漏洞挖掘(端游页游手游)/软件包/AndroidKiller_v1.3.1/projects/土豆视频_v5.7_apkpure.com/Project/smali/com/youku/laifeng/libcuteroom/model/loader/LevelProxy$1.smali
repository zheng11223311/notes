.class Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;
.super Landroid/os/Handler;
.source "LevelProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->access$200(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    .line 68
    :cond_0
    return-void
.end method
