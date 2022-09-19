.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHotseatExpand(ZZ)V
    .locals 1
    .param p1, "expand"    # Z
    .param p2, "showController"    # Z

    .prologue
    .line 860
    if-eqz p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    if-eqz p2, :cond_0

    .line 864
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    .line 865
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    goto :goto_0
.end method

.method public onHotseatItemClick(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V
    .locals 12
    .param p1, "item"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 759
    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onHotseatItemClick : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v6, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v8, 0x190

    invoke-static {v6, v8, v9}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 856
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-boolean v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoinfoGeted:Z

    if-nez v6, :cond_1

    .line 765
    const-string v5, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 769
    .local v2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v6, v7, :cond_4

    .line 770
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerToleftrightbottom()V

    .line 771
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 772
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 774
    :cond_2
    const-string v6, "type"

    const-string v7, "\u73a9\u8d27"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v6

    invoke-virtual {v6, v5, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 776
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "bundle.goods"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 778
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v5

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5, v6, v0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 851
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    :goto_1
    iget-object v5, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-eq v5, v6, :cond_11

    .line 852
    const-string v5, "t1.detail_player.interactiveclick"

    invoke-static {v5, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 779
    :cond_4
    iget-object v6, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v6, v7, :cond_5

    .line 780
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerToleftrightbottom()V

    .line 781
    const-string v6, "type"

    const-string v7, "\u770b\u70b9"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v6

    invoke-virtual {v6, v5, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 783
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 785
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v5

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5, v6, v11, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    goto :goto_1

    .line 787
    :cond_5
    iget-object v6, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v6, v7, :cond_6

    .line 788
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerToleftrightbottom()V

    .line 789
    const-string v6, "type"

    const-string v7, "\u6ce8\u91ca"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v6

    invoke-virtual {v6, v5, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 791
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 792
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v5, "bundle.anno"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mAnnos:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 793
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v5

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5, v6, v0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    goto/16 :goto_1

    .line 794
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_6
    iget-object v6, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v6, v7, :cond_9

    .line 795
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerToleftrightbottom()V

    .line 796
    const-string v6, "type"

    const-string v7, "\u6295\u7968"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v6

    invoke-virtual {v6, v5, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 798
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 799
    .restart local v0    # "b":Landroid/os/Bundle;
    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-direct {v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;-><init>()V

    .line 800
    .local v4, "vote":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v6, :cond_7

    .line 801
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->getMatchVote(Ljava/util/ArrayList;I)Lcom/tudou/detail/vo/VoteInfo;

    move-result-object v3

    .line 802
    .local v3, "info":Lcom/tudou/detail/vo/VoteInfo;
    if-eqz v3, :cond_7

    .line 803
    invoke-virtual {v3, v10}, Lcom/tudou/detail/vo/VoteInfo;->setClosed(Z)V

    .line 806
    .end local v3    # "info":Lcom/tudou/detail/vo/VoteInfo;
    :cond_7
    const-string v6, "bundle.votes"

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 807
    const-string v6, "bundle.current.position"

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v7, :cond_8

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v5

    :cond_8
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v5

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5, v6, v0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    goto/16 :goto_1

    .line 809
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "vote":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;
    :cond_9
    iget-object v6, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v6, v7, :cond_b

    .line 810
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v5, v10}, Lcom/tudou/ui/activity/DetailActivity;->dismissScreenshotCling(Z)V

    .line 811
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerToleftrightbottom()V

    .line 812
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 813
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    .line 814
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 815
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    goto/16 :goto_1

    .line 821
    :cond_a
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->expand()V

    goto/16 :goto_1

    .line 825
    :cond_b
    iget-object v6, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->SCREENSHOT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v6, v7, :cond_10

    .line 826
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v6, v6, Lcom/tudou/ui/activity/DetailActivity;->mIsChangingQuality:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v6}, Lcom/youku/player/BaseMediaPlayer;->isPause()Z

    move-result v6

    if-nez v6, :cond_c

    .line 827
    const-string v5, "\u6b63\u5728\u5207\u6362\u6e05\u6670\u5ea6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u54e6"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 830
    :cond_c
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v6}, Lcom/youku/player/BaseMediaPlayer;->isPause()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 831
    :cond_d
    const-string v5, "\u5148\u64ad\u653e\u89c6\u9891\u624d\u80fd\u591f\u622a\u56fe\u54e6"

    const-wide/16 v6, -0x1

    invoke-static {v5, v6, v7, v10}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 834
    :cond_e
    const-string v6, "plugin.fullscreen.screenshot"

    invoke-static {v6}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    .line 835
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const v7, 0x7f0c0b8c

    invoke-virtual {v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 836
    .local v1, "cling":Landroid/view/View;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    .line 837
    const-string v5, "t1.detail_player.shootmeguide"

    invoke-static {v5, v11}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 838
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5, v10}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V

    .line 845
    :goto_2
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v5, v10}, Lcom/tudou/ui/activity/DetailActivity;->dismissScreenshotCling(Z)V

    goto/16 :goto_0

    .line 840
    :cond_f
    const-string v6, "t1.detail_player.shootmeclick"

    invoke-static {v6, v11}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 841
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v6, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V

    goto :goto_2

    .line 847
    .end local v1    # "cling":Landroid/view/View;
    :cond_10
    iget-object v5, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v5, v6, :cond_3

    goto/16 :goto_1

    .line 854
    :cond_11
    const-string v5, "t1.detail_player.interactive"

    invoke-static {v5, v11}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public onHotseatItemTouch(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "item"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 872
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 873
    .local v0, "action":I
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHotseatItemTouch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHotseatItemTouch isRealVideoStartForRecord = : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mControllIsAnimating = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v1

    .line 879
    :cond_1
    iget-object v3, p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v3, v4, :cond_8

    .line 880
    if-nez v0, :cond_7

    .line 881
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v2, v2, Lcom/tudou/ui/activity/DetailActivity;->mIsChangingQuality:Z

    if-eqz v2, :cond_2

    .line 882
    const-string v2, "\u6b63\u5728\u5207\u6362\u6e05\u6670\u5ea6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u54e6"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->isPause()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 886
    :cond_3
    const-string v2, "\u5148\u64ad\u653e\u89c6\u9891\u624d\u80fd\u591f\u5f55\u5236\u54e6"

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5, v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 889
    :cond_4
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-boolean v1, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 890
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 893
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :cond_5
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->hide()V

    .line 896
    invoke-virtual {p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->startRippleFeedback()V

    .line 897
    invoke-virtual {p1, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 898
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v2, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->startVideoRecord(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V

    .line 899
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    .line 901
    const-string v2, "t1.detail_player.videotapeclick"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 903
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getItemCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 904
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnExpand()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 906
    :cond_6
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/activity/DetailActivity;->dismissScreenshotCling(Z)V

    .line 907
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnScreenShot()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 908
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/activity/DetailActivity;->dismissScreenshotCling(Z)V

    goto/16 :goto_0

    .line 909
    :cond_7
    if-ne v0, v1, :cond_0

    .line 910
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$3400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    if-eqz v3, :cond_0

    .line 911
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-boolean v2, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 912
    invoke-virtual {p1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 913
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopVideoRecord(I)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 918
    goto/16 :goto_0
.end method
