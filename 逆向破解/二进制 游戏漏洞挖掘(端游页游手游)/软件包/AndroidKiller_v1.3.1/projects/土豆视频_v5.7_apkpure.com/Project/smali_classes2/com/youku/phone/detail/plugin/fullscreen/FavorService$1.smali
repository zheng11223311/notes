.class Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;
.super Landroid/os/Handler;
.source "FavorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FavorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FavorService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->distory()V

    .line 43
    return-void

    .line 30
    :pswitch_0
    new-instance v0, Lcom/youku/player/plugin/SimpleMsgResult;

    invoke-direct {v0}, Lcom/youku/player/plugin/SimpleMsgResult;-><init>()V

    .line 31
    .local v0, "msgResult":Lcom/youku/player/plugin/SimpleMsgResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/SimpleMsgResult;->setSucc(Z)V

    .line 32
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->netListener:Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    invoke-interface {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;->callback(Lcom/youku/player/plugin/SimpleMsgResult;)V

    goto :goto_0

    .line 36
    .end local v0    # "msgResult":Lcom/youku/player/plugin/SimpleMsgResult;
    :pswitch_1
    new-instance v0, Lcom/youku/player/plugin/SimpleMsgResult;

    invoke-direct {v0}, Lcom/youku/player/plugin/SimpleMsgResult;-><init>()V

    .line 37
    .restart local v0    # "msgResult":Lcom/youku/player/plugin/SimpleMsgResult;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/SimpleMsgResult;->setSucc(Z)V

    .line 38
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->netListener:Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;

    invoke-interface {v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;->callback(Lcom/youku/player/plugin/SimpleMsgResult;)V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
