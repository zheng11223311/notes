.class Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;
.super Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;
.source "FavouritePlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    :cond_0
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public onSucess(Lcom/youku/vo/FavouritePlaylistResult;I)V
    .locals 3
    .param p1, "favouritevideoresult"    # Lcom/youku/vo/FavouritePlaylistResult;
    .param p2, "dataType"    # I

    .prologue
    .line 345
    iget-object v1, p1, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    iget-object v1, v1, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tudou/adapter/FavouritePlaylistAdapter;->flag:Z

    .line 347
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 349
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    const/16 v1, 0x7d1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 351
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 352
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$000(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 353
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
