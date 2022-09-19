.class Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;
.super Ljava/lang/Object;
.source "FullscreenFragmentGoodsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    iget-object v1, v1, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string v1, "t1.detail_player.wanhuobuynow"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    iget-object v1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    invoke-static {v1}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->access$000(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u534a\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "t1.detail_ vertical.buynow"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 106
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;

    invoke-static {v1}, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;->access$100(Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$1;->val$holder:Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;

    iget-object v2, v2, Lcom/tudou/detail/adapter/FullscreenFragmentGoodsAdapter$FullscreenFragmentVideoGoodsItemHolder;->mGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method
