.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;
.super Ljava/lang/Object;
.source "FullScreenFragmentPoint.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    const v5, 0x7f0d02c3

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;

    iget-object v2, v5, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;->point:Lcom/youku/player/goplay/Point;

    .line 121
    .local v2, "p":Lcom/youku/player/goplay/Point;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/tudou/ui/activity/DetailActivity;

    .line 122
    .local v3, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "tCurVid":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    .line 125
    .local v0, "mMediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPointItemClick tCurVid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t1.detail_player.focusvideoclick__.1_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 129
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    .line 130
    .local v1, "mediaplayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 132
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v5}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v5, "episodes"

    iget-object v6, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, v6, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v5

    iget-object v6, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, v6, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v6, v6, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v5, v6, :cond_2

    .line 137
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 140
    :cond_2
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 152
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 153
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 154
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentPoint;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 156
    :cond_4
    iget-wide v6, v2, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/tudou/ui/activity/DetailActivity;->seekTo(IZ)V

    goto/16 :goto_0

    .line 144
    :cond_5
    iget-wide v6, v2, Lcom/youku/player/goplay/Point;->start:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v5, v5, Lcom/youku/player/module/PayInfo$Trial;->time:I

    int-to-double v8, v5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_6

    .line 145
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 148
    :cond_6
    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    goto :goto_1

    .line 158
    :cond_7
    const-string v5, "\u5e7f\u544a\u4e2d"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
