.class Lcom/tudou/ui/activity/DetailActivity$10;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$newplaylistCode:Ljava/lang/String;

.field final synthetic val$showid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$showid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$newplaylistCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1787
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$showid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1788
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->access$802(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1792
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object v5, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 1793
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1, v5}, Lcom/tudou/ui/activity/DetailActivity;->access$902(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1794
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, v1, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->resetFirstPlay()V

    .line 1795
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$showid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1796
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$showid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$showid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 1797
    .local v0, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1811
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getDetailLayoutData()V

    .line 1812
    return-void

    .line 1790
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->access$802(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$newplaylistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1801
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 1802
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1

    .line 1805
    .end local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$newplaylistCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    .line 1806
    new-instance v1, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->val$id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, v2, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v0

    .line 1807
    .restart local v0    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$10;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1
.end method
