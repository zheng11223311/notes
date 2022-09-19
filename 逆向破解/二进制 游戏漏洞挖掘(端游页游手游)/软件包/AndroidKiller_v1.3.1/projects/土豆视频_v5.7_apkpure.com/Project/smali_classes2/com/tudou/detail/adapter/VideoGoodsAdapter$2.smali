.class Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;
.super Ljava/lang/Object;
.source "VideoGoodsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 94
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v0, v0, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "t1.detail_sdetail.wanhuoclick"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 100
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;->this$0:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    invoke-static {v0}, Lcom/tudou/detail/adapter/VideoGoodsAdapter;->access$000(Lcom/tudou/detail/adapter/VideoGoodsAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/tudou/detail/adapter/VideoGoodsAdapter$2;->val$holder:Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;

    iget-object v1, v1, Lcom/tudou/detail/adapter/VideoGoodsAdapter$VideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 102
    :cond_0
    return-void
.end method
