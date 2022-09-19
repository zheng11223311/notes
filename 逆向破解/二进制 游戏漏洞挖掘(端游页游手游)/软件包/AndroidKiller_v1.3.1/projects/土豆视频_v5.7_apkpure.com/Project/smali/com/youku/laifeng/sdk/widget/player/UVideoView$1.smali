.class Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;
.super Ljava/lang/Object;
.source "UVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/player/UVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 148
    .local v0, "vHeight":I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 149
    .local v1, "vWidth":I
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$002(Lcom/youku/laifeng/sdk/widget/player/UVideoView;F)F

    .line 150
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->resize()V

    .line 151
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 152
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$1;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$100(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;->onPlayerStarted()V

    .line 153
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_play_media"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    return-void
.end method
