.class Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoGoodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/VideoGoodsAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

.field final synthetic val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoGoodsAdapter;Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;->this$0:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;->val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

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
    .line 85
    iget-object v1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;->val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    iget-object v1, v1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->img:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$1;->val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    iget-object v1, v1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
