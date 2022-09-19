.class Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;
.super Ljava/lang/Object;
.source "AbsPluginFullScreenInnerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    goto :goto_0
.end method
