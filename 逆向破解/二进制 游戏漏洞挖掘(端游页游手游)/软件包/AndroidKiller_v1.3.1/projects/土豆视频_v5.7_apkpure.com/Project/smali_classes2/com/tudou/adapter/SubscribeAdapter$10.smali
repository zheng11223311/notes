.class Lcom/tudou/adapter/SubscribeAdapter$10;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SubscribeAdapter;

.field final synthetic val$favour:Landroid/widget/ImageView;

.field final synthetic val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$favour:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 699
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v0, "\u8ba2\u9605tab\u6536\u85cf\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5728\u8ba2\u9605tab\u70b9\u51fb\u4e86\u6536\u85cf\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-boolean v0, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->isFavourite:Z

    if-nez v0, :cond_1

    .line 648
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    new-instance v5, Lcom/tudou/adapter/SubscribeAdapter$10$1;

    invoke-direct {v5, p0}, Lcom/tudou/adapter/SubscribeAdapter$10$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter$10;)V

    invoke-interface/range {v0 .. v5}, Lcom/tudou/service/favourite/IFavouriteVedio;->addToFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    goto :goto_0

    .line 672
    :cond_1
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->code:Ljava/lang/String;

    new-instance v3, Lcom/tudou/adapter/SubscribeAdapter$10$2;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/SubscribeAdapter$10$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter$10;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/service/favourite/IFavouriteVedio;->deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    goto :goto_0
.end method
