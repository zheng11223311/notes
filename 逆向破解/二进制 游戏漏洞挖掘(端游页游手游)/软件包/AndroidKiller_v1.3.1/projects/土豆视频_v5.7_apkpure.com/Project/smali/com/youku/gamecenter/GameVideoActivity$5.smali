.class Lcom/youku/gamecenter/GameVideoActivity$5;
.super Landroid/os/Handler;
.source "GameVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 258
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$100(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$100(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$100(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$200(Lcom/youku/gamecenter/GameVideoActivity;)V

    .line 251
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$400(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$300(Lcom/youku/gamecenter/GameVideoActivity;)Lcom/youku/gamecenter/player/GameVideoPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 252
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$300(Lcom/youku/gamecenter/GameVideoActivity;)Lcom/youku/gamecenter/player/GameVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->getLastDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$502(Lcom/youku/gamecenter/GameVideoActivity;I)I

    .line 253
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$5;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$600(Lcom/youku/gamecenter/GameVideoActivity;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
