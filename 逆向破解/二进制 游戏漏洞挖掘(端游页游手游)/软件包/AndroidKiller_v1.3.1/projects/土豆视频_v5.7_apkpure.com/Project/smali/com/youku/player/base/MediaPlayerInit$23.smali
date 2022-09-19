.class Lcom/youku/player/base/MediaPlayerInit$23;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnQualityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit;->execute(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/MediaPlayerInit;

.field final synthetic val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$23;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$23;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQualityChangeSuccess()V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$23;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$23;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$23;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->updateWidthAndHeightFromNative()V

    .line 818
    :cond_0
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$23;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    sget v2, Lcom/youku/player/goplay/Profile;->videoQuality:I

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/apiservice/PlantformController;->onQualitySmoothChangeEnd(Lcom/youku/player/apiservice/IPlayerUiControl;I)V

    .line 819
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/youku/player/Track;->onSmoothChangeVideoQualityEnd(Z)V

    .line 820
    return-void
.end method

.method public onQualitySmoothChangeFail()V
    .locals 2

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youku/player/Track;->onSmoothChangeVideoQualityEnd(Z)V

    .line 827
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$23;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$23;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQualityByRestart(I)V

    .line 830
    :cond_0
    return-void
.end method
