.class Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RCViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RCViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/RCViewFlow;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/RCViewFlow;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 810
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    iget-object v3, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v3}, Lio/rong/imkit/widget/RCViewFlow;->access$400(Lio/rong/imkit/widget/RCViewFlow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/RCViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 811
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 812
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v2}, Lio/rong/imkit/widget/RCViewFlow;->access$500(Lio/rong/imkit/widget/RCViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 813
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v2}, Lio/rong/imkit/widget/RCViewFlow;->access$500(Lio/rong/imkit/widget/RCViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v2, v0}, Lio/rong/imkit/widget/RCViewFlow;->access$102(Lio/rong/imkit/widget/RCViewFlow;I)I

    .line 819
    .end local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/widget/RCViewFlow$AdapterDataSetObserver;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v2}, Lio/rong/imkit/widget/RCViewFlow;->access$600(Lio/rong/imkit/widget/RCViewFlow;)V

    .line 820
    return-void

    .line 812
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method
