.class Lcom/youku/player/plugin/PluginVideoAd$4;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginVideoAd;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x2712

    .line 203
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goSmall()V

    .line 205
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$600(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gofull_tudou_pad:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$600(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gofull_tudou:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$600(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gofull_youku:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 216
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 217
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$600(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gosmall_tudou:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$4;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginVideoAd;->access$600(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gosmall_youku:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
