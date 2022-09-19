.class Lcom/youku/gamecenter/player/GameVideoBottomView$2;
.super Landroid/os/Handler;
.source "GameVideoBottomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/player/GameVideoBottomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$500(Lcom/youku/gamecenter/player/GameVideoBottomView;)I

    move-result v0

    .line 220
    .local v0, "pos":I
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$300(Lcom/youku/gamecenter/player/GameVideoBottomView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    iget-boolean v1, v1, Lcom/youku/gamecenter/player/GameVideoBottomView;->mShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$000(Lcom/youku/gamecenter/player/GameVideoBottomView;)Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 222
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/youku/gamecenter/player/GameVideoBottomView$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
