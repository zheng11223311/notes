.class Lcom/youku/gamecenter/player/GameVideoBottomView$1;
.super Ljava/lang/Object;
.source "GameVideoBottomView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 160
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 163
    const-string v4, "GameVideoBottomView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnSeekBarChangeListener().onProgressChanged().progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",fromUser:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez p3, :cond_0

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v4}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$000(Lcom/youku/gamecenter/player/GameVideoBottomView;)Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 168
    .local v0, "duration":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 169
    .local v2, "newposition":J
    iget-object v4, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v4}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$000(Lcom/youku/gamecenter/player/GameVideoBottomView;)Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->seekTo(I)V

    .line 170
    iget-object v4, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v4}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$100(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 171
    iget-object v4, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v4}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$100(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    long-to-int v6, v2

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$200(Lcom/youku/gamecenter/player/GameVideoBottomView;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 178
    const-string v0, "GameVideoBottomView"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show(I)V

    .line 181
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$302(Lcom/youku/gamecenter/player/GameVideoBottomView;Z)Z

    .line 188
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$400(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 193
    const-string v0, "VideoTest"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$302(Lcom/youku/gamecenter/player/GameVideoBottomView;Z)Z

    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$500(Lcom/youku/gamecenter/player/GameVideoBottomView;)I

    .line 196
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    .line 197
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show(I)V

    .line 204
    return-void
.end method
