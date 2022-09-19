.class Lcom/youku/player/danmaku/GetDanmakuUrlService$1;
.super Landroid/os/Handler;
.source "GetDanmakuUrlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/danmaku/GetDanmakuUrlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/GetDanmakuUrlService;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/GetDanmakuUrlService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuUrlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuUrlService;

    invoke-static {v0}, Lcom/youku/player/danmaku/GetDanmakuUrlService;->access$000(Lcom/youku/player/danmaku/GetDanmakuUrlService;)Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/youku/player/danmaku/IDanmakuInfoCallBack;->onSuccess(Ljava/lang/String;ZZLjava/util/ArrayList;)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuUrlService$1;->this$0:Lcom/youku/player/danmaku/GetDanmakuUrlService;

    invoke-static {v0}, Lcom/youku/player/danmaku/GetDanmakuUrlService;->access$000(Lcom/youku/player/danmaku/GetDanmakuUrlService;)Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuInfoCallBack;->onFailed()V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
