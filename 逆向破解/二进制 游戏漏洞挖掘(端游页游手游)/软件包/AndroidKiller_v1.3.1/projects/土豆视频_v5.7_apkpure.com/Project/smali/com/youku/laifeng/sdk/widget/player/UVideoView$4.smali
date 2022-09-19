.class Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;
.super Ljava/lang/Object;
.source "UVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 197
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$4;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$100(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;->onPlayerError(II)V

    .line 201
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_play_media_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method
