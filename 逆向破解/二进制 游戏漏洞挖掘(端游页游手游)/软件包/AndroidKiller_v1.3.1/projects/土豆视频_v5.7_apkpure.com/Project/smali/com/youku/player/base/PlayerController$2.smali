.class Lcom/youku/player/base/PlayerController$2;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/PlayerController;->addPlugins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/PlayerController;


# direct methods
.method constructor <init>(Lcom/youku/player/base/PlayerController;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 276
    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    sget v2, Lcom/youku/android/player/R$id;->player_holder_all:I

    invoke-virtual {v0, v2}, Lcom/youku/player/base/YoukuPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    .line 278
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ad/PlayerAdControl;->createAdPlugins(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 280
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    new-instance v1, Lcom/youku/player/plugin/PluginPayTip;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v3, v3, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v1, v2, v3}, Lcom/youku/player/plugin/PluginPayTip;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v1, v0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    .line 282
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    new-instance v1, Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v3, v3, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v5, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v5}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/youku/player/plugin/PluginChangeQuality;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v1, v0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    .line 287
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$100(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 289
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v3, v3, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v1, v2, v3}, Lcom/youku/player/plugin/PluginSimplePlayer;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v1, v0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, v1, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object v1, v0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 296
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, v1, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginManager;->addYoukuPlayerView(Lcom/youku/player/plugin/PluginOverlay;)V

    .line 297
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, v1, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 298
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 299
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, v1, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 300
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, v1, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 301
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v1}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v2, v2, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPluginAbove(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 302
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$2;->this$0:Lcom/youku/player/base/PlayerController;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    .line 303
    return-void
.end method
