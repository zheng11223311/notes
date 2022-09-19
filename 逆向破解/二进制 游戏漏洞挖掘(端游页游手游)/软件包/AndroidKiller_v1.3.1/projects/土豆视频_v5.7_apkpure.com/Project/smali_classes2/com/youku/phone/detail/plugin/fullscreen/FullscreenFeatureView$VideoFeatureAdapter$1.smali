.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;
.super Ljava/lang/Object;
.source "FullscreenFeatureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

.field final synthetic val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->val$f:Lcom/tudou/detail/vo/DetailFeature$Feature;

    iput p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    const-string v1, "onItemClick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;)Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 214
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$VideoFeatureAdapter$1;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 225
    .end local v0    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_0
    return-void
.end method
