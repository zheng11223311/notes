.class Lcom/youku/player/plugin/PluginChangeQuality$4;
.super Ljava/lang/Object;
.source "PluginChangeQuality.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginChangeQuality;->showChangeQualityTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginChangeQuality;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginChangeQuality;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 94
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2, v5}, Lcom/youku/player/plugin/PluginChangeQuality;->access$102(Lcom/youku/player/plugin/PluginChangeQuality;Z)Z

    .line 95
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->mContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$400(Lcom/youku/player/plugin/PluginChangeQuality;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$300(Lcom/youku/player/plugin/PluginChangeQuality;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$300(Lcom/youku/player/plugin/PluginChangeQuality;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->canShowPluginChangeQuality()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$600(Lcom/youku/player/plugin/PluginChangeQuality;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$400(Lcom/youku/player/plugin/PluginChangeQuality;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-boolean v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->isHide:Z

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2, v5}, Lcom/youku/player/plugin/PluginChangeQuality;->access$402(Lcom/youku/player/plugin/PluginChangeQuality;I)I

    .line 102
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->mArrowButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v0

    .line 105
    .local v0, "quality":I
    if-ne v0, v4, :cond_1

    .line 127
    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v0    # "quality":I
    :cond_1
    const-string v1, ""

    .line 108
    .local v1, "str":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginChangeQuality;->mTipTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u60a8\u5f53\u524d\u7684\u7f51\u7edc\u72b6\u51b5\u4e0d\u4f73<br>\u5efa\u8bae<font color=#15a4ff>\u70b9\u51fb\u5207\u6362</font>\u4e3a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginChangeQuality;->show()V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2, v4}, Lcom/youku/player/plugin/PluginChangeQuality;->access$702(Lcom/youku/player/plugin/PluginChangeQuality;I)I

    .line 111
    const-string/jumbo v1, "\u6807\u6e05\u6a21\u5f0f"

    .line 112
    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v2, v5}, Lcom/youku/player/plugin/PluginChangeQuality;->access$702(Lcom/youku/player/plugin/PluginChangeQuality;I)I

    .line 115
    const-string/jumbo v1, "\u9ad8\u6e05\u6a21\u5f0f"

    .line 116
    goto :goto_1

    .line 118
    :pswitch_3
    iget-object v2, p0, Lcom/youku/player/plugin/PluginChangeQuality$4;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/player/plugin/PluginChangeQuality;->access$702(Lcom/youku/player/plugin/PluginChangeQuality;I)I

    .line 119
    const-string/jumbo v1, "\u8d85\u6e05\u6a21\u5f0f"

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
