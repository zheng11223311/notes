.class Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;
.super Ljava/lang/Object;
.source "UVideoView.java"

# interfaces
.implements Lcom/youku/uplayer/OnLoadingStatusListener;


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
    .line 157
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndLoading()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$100(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;->onPlayerLoadingEnd()V

    .line 168
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_play_media_loadingend"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onStartLoading()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/player/UVideoView$2;->this$0:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->access$100(Lcom/youku/laifeng/sdk/widget/player/UVideoView;)Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;->onPlayerLoadingBegin()V

    .line 162
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_play_media_loadingstart"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    return-void
.end method
