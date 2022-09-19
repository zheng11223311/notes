.class Lcom/tudou/ui/fragment/NewPodcastFragment$9;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPlayList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 847
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$902(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)Z

    .line 848
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1002(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I

    .line 849
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 850
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 851
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 852
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 853
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 855
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v4, 0x0

    .line 830
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v2, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$902(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)Z

    .line 831
    new-instance v1, Lcom/youku/vo/Playlists;

    invoke-direct {v1}, Lcom/youku/vo/Playlists;-><init>()V

    .line 832
    .local v1, "tmpplaylists":Lcom/youku/vo/Playlists;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tmpplaylists":Lcom/youku/vo/Playlists;
    check-cast v1, Lcom/youku/vo/Playlists;

    .line 833
    .restart local v1    # "tmpplaylists":Lcom/youku/vo/Playlists;
    iget-object v2, v1, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v2, v2, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 834
    iget-object v2, v1, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iput v4, v2, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    .line 837
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 838
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xfa4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 839
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 840
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$9;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 843
    :cond_1
    return-void
.end method
