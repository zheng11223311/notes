.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;
.super Ljava/lang/Object;
.source "FullScreenPlaylistView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->showLoading(ZZ)V

    .line 126
    new-instance v0, Lcom/tudou/detail/DetailModel;

    invoke-direct {v0}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 127
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Z

    move-result v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;

    invoke-direct {v5, p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$1;Lcom/tudou/detail/DetailModel;)V

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/detail/DetailModel;->getVideoDetailAsyn(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnVideoDetailGettedListener;)V

    goto :goto_0
.end method
