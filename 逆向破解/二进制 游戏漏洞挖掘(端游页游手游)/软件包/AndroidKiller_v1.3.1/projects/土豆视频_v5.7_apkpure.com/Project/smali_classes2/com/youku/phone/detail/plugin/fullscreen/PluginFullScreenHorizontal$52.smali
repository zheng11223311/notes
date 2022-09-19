.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->checkHdInfos(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

.field final synthetic val$tGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V
    .locals 0

    .prologue
    .line 4205
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->val$tGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4208
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4209
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 4211
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->val$tGoods:Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->setClosed(Z)V

    .line 4212
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 4213
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment()V

    .line 4214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4215
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.goods"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4216
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v2, v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 4217
    return-void
.end method
