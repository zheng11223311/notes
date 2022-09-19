.class Lcom/tudou/android/chat/ChatFragment$7;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatFragment;->onVideoMessageClick(Lio/rong/imlib/model/MessageContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatFragment;

.field final synthetic val$duration:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment$7;->this$0:Lcom/tudou/android/chat/ChatFragment;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatFragment$7;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/android/chat/ChatFragment$7;->val$duration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 653
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment$7;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-virtual {v4}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 673
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment$7;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-virtual {v4}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 655
    .local v1, "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayer()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    .line 656
    .local v3, "mediaPlayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v4, :cond_1

    .line 657
    const-string v4, "\u5e7f\u544a\u5c1a\u672a\u64ad\u5b8c\uff0c\u4e0d\u80fd\u70b9\u51fb\u54e6"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v0

    .line 661
    .local v0, "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/android/chat/ChatFragment$7;->val$videoId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    invoke-virtual {v1, v6}, Lcom/tudou/ui/activity/DetailActivity;->setEnable3GPLAY(Z)V

    .line 663
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment$7;->val$duration:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4, v6}, Lcom/tudou/ui/activity/DetailActivity;->seekTo(IZ)V

    .line 664
    const-string v4, "byron"

    const-string v5, "same video, seek to."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_1
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment$7;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-static {v4}, Lcom/tudou/android/chat/ChatFragment;->access$300(Lcom/tudou/android/chat/ChatFragment;)Lcom/youku/widget/TudouDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/TudouDialog;->dismiss()V

    goto :goto_0

    .line 666
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment$7;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-virtual {v4}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "point"

    iget-object v5, p0, Lcom/tudou/android/chat/ChatFragment$7;->val$duration:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const-string v4, "video_id"

    iget-object v5, p0, Lcom/tudou/android/chat/ChatFragment$7;->val$videoId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v4, "intent.extra.force.replay"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment$7;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-virtual {v4, v2}, Lcom/tudou/android/chat/ChatFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
