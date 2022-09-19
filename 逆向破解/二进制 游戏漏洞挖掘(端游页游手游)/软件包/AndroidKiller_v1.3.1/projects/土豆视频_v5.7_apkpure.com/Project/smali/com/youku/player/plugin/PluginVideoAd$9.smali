.class Lcom/youku/player/plugin/PluginVideoAd$9;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginVideoAd;->onVideoChange()V
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
    .line 365
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 369
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->play_adButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->ad_more:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkipBlank:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd$9;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginVideoAd;->hideTrueViewAd()V

    .line 381
    return-void
.end method
