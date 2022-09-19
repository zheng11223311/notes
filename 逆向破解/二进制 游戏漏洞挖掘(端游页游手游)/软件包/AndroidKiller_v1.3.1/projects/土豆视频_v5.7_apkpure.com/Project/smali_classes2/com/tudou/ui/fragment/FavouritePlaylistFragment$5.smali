.class Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;
.super Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;
.source "FavouritePlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->askDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

.field final synthetic val$tmpfavlist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->val$tmpfavlist:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 512
    :cond_0
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 499
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 500
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 501
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->val$tmpfavlist:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    :cond_0
    return-void
.end method
