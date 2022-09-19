.class Lcom/youku/gamecenter/player/GameVideoBottomView$5;
.super Ljava/lang/Object;
.source "GameVideoBottomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V
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
    .line 310
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$000(Lcom/youku/gamecenter/player/GameVideoBottomView;)Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$800(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$000(Lcom/youku/gamecenter/player/GameVideoBottomView;)Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getPauseDrawable()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    :goto_1
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getPlayDrawable()I

    move-result v0

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$800(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$5;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getPlayDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
