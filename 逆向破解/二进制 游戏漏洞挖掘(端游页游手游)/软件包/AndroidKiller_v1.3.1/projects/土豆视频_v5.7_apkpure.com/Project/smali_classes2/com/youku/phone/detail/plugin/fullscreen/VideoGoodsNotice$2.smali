.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;
.super Ljava/lang/Object;
.source "VideoGoodsNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 91
    const-string v1, "t1.detail_player.wanhuobuynow"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 92
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u63d0\u793a\u6761"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "t1.detail_ vertical.buynow"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 97
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->setClosed(Z)V

    .line 99
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v2

    iget-object v2, v2, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->buy_url:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 103
    :cond_1
    return-void
.end method
