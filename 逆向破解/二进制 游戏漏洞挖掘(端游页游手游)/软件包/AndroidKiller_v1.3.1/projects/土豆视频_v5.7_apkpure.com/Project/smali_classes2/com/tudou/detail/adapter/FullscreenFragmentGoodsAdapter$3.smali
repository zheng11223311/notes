.class Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "FullscreenFragmentGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

.field final synthetic val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    iget-object v1, v1, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->img:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$3;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    iget-object v1, v1, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
