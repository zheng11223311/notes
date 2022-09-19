.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;
.super Ljava/lang/Object;
.source "FavouriteVedioFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 415
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p3, v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/FavouriteVedioAdapter;->getMyFavouriteCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    add-int/lit8 p3, p3, -0x1

    .line 422
    const v3, 0x7f0c07c3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 423
    .local v0, "img":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    .line 424
    .local v1, "item":Lcom/youku/vo/FavouriteVideo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iget-boolean v3, v3, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    if-eqz v3, :cond_4

    .line 425
    iget-boolean v3, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    .line 426
    iget-boolean v3, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget v4, v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 428
    const v3, 0x7f0207fe

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    :goto_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->changedeletNum()V

    goto :goto_0

    .line 425
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 430
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget v4, v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 431
    const v3, 0x7f0207ff

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 435
    :cond_4
    const-string v3, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u89c6\u9891\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u89c6\u9891\u6761\u76ee"

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, v1, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    .line 437
    .local v2, "itemCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 438
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$500(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/tudou/ui/activity/MyFavoriteActivity;

    move-result-object v3

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, v1, Lcom/youku/vo/FavouriteVideo;->title:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
