.class Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;
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
    .line 107
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;->setClosed(Z)V

    .line 112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 114
    :cond_0
    return-void
.end method
