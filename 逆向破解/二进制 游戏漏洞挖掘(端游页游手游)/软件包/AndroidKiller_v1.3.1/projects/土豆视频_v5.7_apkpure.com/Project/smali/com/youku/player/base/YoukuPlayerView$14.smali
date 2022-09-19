.class Lcom/youku/player/base/YoukuPlayerView$14;
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


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$14;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1170
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView$14;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0, v1}, Lcom/youku/player/apiservice/PlantformController;->setWaterMarkInvisible(Lcom/youku/player/base/YoukuPlayerView;)V

    .line 1172
    return-void
.end method
