.class Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;
.super Ljava/lang/Object;
.source "FavouritePlaylistFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 419
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->getMyFavouriteCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    add-int/lit8 p3, p3, -0x1

    .line 427
    const v2, 0x7f0c07c3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 429
    .local v0, "img":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouritePlaylist;

    .line 431
    .local v1, "item":Lcom/youku/vo/FavouritePlaylist;
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iget-boolean v2, v2, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    if-eqz v2, :cond_4

    .line 432
    iget-boolean v2, v1, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    .line 433
    iget-boolean v2, v1, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    if-eqz v2, :cond_3

    .line 434
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget v3, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 435
    const v2, 0x7f0207fe

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->changedeletNum()V

    goto :goto_0

    .line 432
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 437
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget v3, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 438
    const v2, 0x7f0207ff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 443
    :cond_4
    iget-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->itemsCount:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    if-nez v2, :cond_6

    .line 444
    :cond_5
    const-string v2, "\u8be5\u89c6\u9891\u5df2\u88ab\u5220\u9664"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_6
    const-string v2, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u8c46\u5355\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u8c46\u5355\u6761\u76ee"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    iget-object v2, v2, Lcom/youku/vo/FavouritePlaylist$FirstItem;->icode:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$500(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/tudou/ui/activity/MyFavoriteActivity;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    iget-object v3, v3, Lcom/youku/vo/FavouritePlaylist$FirstItem;->icode:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    iget-object v5, v5, Lcom/youku/vo/FavouritePlaylist$FirstItem;->title:Ljava/lang/String;

    iget-object v6, v1, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
