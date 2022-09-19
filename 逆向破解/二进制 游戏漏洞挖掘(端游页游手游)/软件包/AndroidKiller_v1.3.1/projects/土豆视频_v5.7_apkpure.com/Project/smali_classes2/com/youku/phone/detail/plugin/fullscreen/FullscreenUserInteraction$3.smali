.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->initIneract()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    const-string v1, "test2"

    const-string v2, "onClick_fav"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "onClick_fav"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->dissmissPauseAD()V

    .line 281
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    :cond_2
    const-string v1, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 288
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    if-eqz v1, :cond_4

    const-string v1, "\u53d6\u6d88\u6536\u85cf"

    :goto_1
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "vid"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "t1.detail_player.collection"

    invoke-static {v1, v7}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 294
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;

    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;-><init>()V

    .line 295
    .local v0, "favorService":Lcom/youku/phone/detail/plugin/fullscreen/FavorService;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    if-eqz v1, :cond_5

    .line 298
    const-string v1, "\u64ad\u653e\u9875\u53d6\u6d88\u6536\u85cf\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u9875\u53d6\u6d88\u6536\u85cf\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->cacelfav(Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "favorService":Lcom/youku/phone/detail/plugin/fullscreen/FavorService;
    :cond_4
    const-string v1, "\u6536\u85cf"

    goto :goto_1

    .line 324
    .restart local v0    # "favorService":Lcom/youku/phone/detail/plugin/fullscreen/FavorService;
    :cond_5
    const-string v1, "\u64ad\u653e\u9875\u6536\u85cf\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u9875\u6536\u85cf\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$2;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$3;)V

    invoke-virtual/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/FavorService;->favor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;)V

    goto/16 :goto_0
.end method
