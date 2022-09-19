.class Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/leo/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corncop/leo/ViewFlow;


# direct methods
.method constructor <init>(Lcom/corncop/leo/ViewFlow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 857
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    iget-object v3, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v3}, Lcom/corncop/leo/ViewFlow;->access$600(Lcom/corncop/leo/ViewFlow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/corncop/leo/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 858
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 859
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v2}, Lcom/corncop/leo/ViewFlow;->access$700(Lcom/corncop/leo/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 860
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v2}, Lcom/corncop/leo/ViewFlow;->access$700(Lcom/corncop/leo/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 861
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v2, v0}, Lcom/corncop/leo/ViewFlow;->access$102(Lcom/corncop/leo/ViewFlow;I)I

    .line 866
    .end local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/corncop/leo/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v2}, Lcom/corncop/leo/ViewFlow;->access$800(Lcom/corncop/leo/ViewFlow;)V

    .line 867
    return-void

    .line 859
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method
