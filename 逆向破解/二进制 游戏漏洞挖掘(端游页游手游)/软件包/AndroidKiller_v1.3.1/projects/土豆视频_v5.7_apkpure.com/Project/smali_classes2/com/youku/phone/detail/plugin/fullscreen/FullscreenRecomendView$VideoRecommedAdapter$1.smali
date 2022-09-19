.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;
.super Ljava/lang/Object;
.source "FullscreenRecomendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;I)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    const-string v1, "onItemClick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 233
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;

    invoke-direct {v1, p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenRecomendView$VideoRecommedAdapter$1;Lcom/tudou/ui/activity/DetailActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
