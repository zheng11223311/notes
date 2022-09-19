.class Lcom/youku/player/danmaku/GetDanmakuStatusService$1;
.super Landroid/os/Handler;
.source "GetDanmakuStatusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/danmaku/GetDanmakuStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/GetDanmakuStatusService;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$000(Lcom/youku/player/danmaku/GetDanmakuStatusService;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-static {v0}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$500(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-static {v1}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$100(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-static {v2}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$200(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Z

    move-result v2

    iget-object v3, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-static {v3}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$300(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Z

    move-result v3

    iget-object v4, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-static {v4}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$400(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/youku/player/danmaku/IDanmakuInfoCallBack;->onSuccess(Ljava/lang/String;ZZLjava/util/ArrayList;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-static {v0}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->access$500(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuInfoCallBack;->onFailed()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
