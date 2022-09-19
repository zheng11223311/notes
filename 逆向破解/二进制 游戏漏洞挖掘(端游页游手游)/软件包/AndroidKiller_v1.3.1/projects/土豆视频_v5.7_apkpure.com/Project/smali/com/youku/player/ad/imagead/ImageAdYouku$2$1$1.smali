.class Lcom/youku/player/ad/imagead/ImageAdYouku$2$1$1;
.super Ljava/lang/Object;
.source "ImageAdYouku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1$1;->this$2:Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1$1;->this$2:Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 161
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1$1;->this$2:Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onChangeVideo()V

    .line 163
    return-void
.end method
