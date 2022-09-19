.class Lcom/youku/phone/detail/plugin/PluginSmall$23;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 2128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2270
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2204
    :sswitch_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2207
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2208
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2210
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2211
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2212
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0, v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3100(Lcom/youku/phone/detail/plugin/PluginSmall;Z)V

    goto :goto_0

    .line 2215
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3200(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 2216
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    goto :goto_0

    .line 2225
    :sswitch_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->playParse(Z)V

    goto :goto_0

    .line 2230
    :sswitch_3
    const-string v0, "\u8be6\u60c5\u9875\u5168\u5c4f\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5168\u5c4f\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2233
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goVerticalFullScreen()V

    .line 2234
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 2236
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goFullScreen()V

    goto/16 :goto_0

    .line 2241
    :sswitch_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2244
    const-string v0, "\u8be6\u60c5\u9875\u6682\u505c\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6682\u505c\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->pause()V

    .line 2247
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    .line 2248
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3300(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2249
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3300(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2250
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3400(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2251
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3400(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2252
    :cond_6
    const-string v0, "PluginSmall"

    const-string v1, "startPlay"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    goto/16 :goto_0

    .line 2255
    :cond_7
    const-string v0, "PluginSmall"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    const-string v0, "\u8be6\u60c5\u9875\u64ad\u653e\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u64ad\u653e\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$23;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3500(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    goto :goto_1

    .line 2128
    :sswitch_data_0
    .sparse-switch
        0x7f0c0329 -> :sswitch_3
        0x7f0c032b -> :sswitch_4
        0x7f0c0331 -> :sswitch_2
        0x7f0c06a0 -> :sswitch_0
        0x7f0c0c03 -> :sswitch_1
        0x7f0c0c10 -> :sswitch_2
        0x7f0c0dff -> :sswitch_0
        0x7f0c0e00 -> :sswitch_0
    .end sparse-switch
.end method
