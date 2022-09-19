.class Lcom/youku/player/base/YoukuPlayerView$15;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->setupWaterMark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;

.field final synthetic val$currentQuality:I


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;I)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$15;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iput p2, p0, Lcom/youku/player/base/YoukuPlayerView$15;->val$currentQuality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1177
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView$15;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$15;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, v2, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    iget v3, p0, Lcom/youku/player/base/YoukuPlayerView$15;->val$currentQuality:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/apiservice/PlantformController;->setWaterMarkVisible(Lcom/youku/player/base/YoukuPlayerView;I)V

    .line 1181
    return-void
.end method
