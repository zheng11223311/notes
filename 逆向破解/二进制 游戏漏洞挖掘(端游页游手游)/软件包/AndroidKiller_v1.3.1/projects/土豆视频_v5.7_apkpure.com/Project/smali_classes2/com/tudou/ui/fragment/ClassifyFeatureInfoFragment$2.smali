.class Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;
.super Ljava/lang/Object;
.source "ClassifyFeatureInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initGallery(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$2;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method
