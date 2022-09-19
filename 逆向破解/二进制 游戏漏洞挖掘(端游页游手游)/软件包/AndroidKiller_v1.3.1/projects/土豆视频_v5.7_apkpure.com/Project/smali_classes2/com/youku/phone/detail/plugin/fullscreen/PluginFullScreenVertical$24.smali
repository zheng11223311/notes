.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->checkHdInfos(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

.field final synthetic val$tGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V
    .locals 0

    .prologue
    .line 2224
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->val$tGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 2227
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2228
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 2230
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->val$tGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    invoke-virtual {v1, v3}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->setClosed(Z)V

    .line 2231
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 2232
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 2233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2234
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.goods"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2235
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v1, v3, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$4000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;ILandroid/os/Bundle;)V

    .line 2236
    return-void
.end method
