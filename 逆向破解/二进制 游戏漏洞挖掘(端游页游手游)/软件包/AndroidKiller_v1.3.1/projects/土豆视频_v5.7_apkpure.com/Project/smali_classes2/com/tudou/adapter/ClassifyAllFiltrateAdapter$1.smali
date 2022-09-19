.class Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;
.super Ljava/lang/Object;
.source "ClassifyAllFiltrateAdapter.java"

# interfaces
.implements Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iput p2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/youku/widget/PageHorizontalScrollView;IIII)V
    .locals 2
    .param p1, "scrollView"    # Lcom/youku/widget/PageHorizontalScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$000(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$000(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ClassifyAllFiltrateStateBean;

    iput p2, v0, Lcom/youku/vo/ClassifyAllFiltrateStateBean;->scrollX:I

    .line 94
    :cond_0
    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 98
    invoke-static {}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->notifyAdapter()V

    .line 99
    return-void
.end method
