.class Lcom/youku/player/plugin/MediaPlayerDelegate$3;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;->replayVideo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$autoPlay:I


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;I)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput p2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->val$autoPlay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v2, v0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 815
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v2, v0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    .line 816
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 817
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v2, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 818
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setReplay(Z)V

    .line 819
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v2}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 820
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onReplay()V

    .line 821
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    iget v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->val$autoPlay:I

    iput v1, v0, Lcom/youku/player/module/PlayVideoInfo;->autoPlay:I

    .line 822
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$3;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 823
    return-void
.end method
