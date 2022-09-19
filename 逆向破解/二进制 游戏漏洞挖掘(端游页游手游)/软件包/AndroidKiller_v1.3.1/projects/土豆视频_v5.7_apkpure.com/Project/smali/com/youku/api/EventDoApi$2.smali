.class Lcom/youku/api/EventDoApi$2;
.super Ljava/lang/Object;
.source "EventDoApi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/api/EventDoApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/api/EventDoApi;


# direct methods
.method constructor <init>(Lcom/youku/api/EventDoApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youku/api/EventDoApi$2;->this$0:Lcom/youku/api/EventDoApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/api/EventDoApi$2;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/api/EventDoApi;->access$202(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 122
    iget-object v0, p0, Lcom/youku/api/EventDoApi$2;->this$0:Lcom/youku/api/EventDoApi;

    invoke-static {v0}, Lcom/youku/api/EventDoApi;->access$700(Lcom/youku/api/EventDoApi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/api/EventDoApi$2;->this$0:Lcom/youku/api/EventDoApi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/api/EventDoApi;->access$202(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 128
    return-void
.end method
