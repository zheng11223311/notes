.class Lcom/tudou/detail/fragment/VideoCacheFragment$6;
.super Ljava/lang/Object;
.source "VideoCacheFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCacheFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCacheFragment;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    .local v0, "tCurrentFormatText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/tudou/detail/adapter/SpinnerArrayAdapter;->setCurrentText(Ljava/lang/String;)V

    .line 341
    const-string v1, "\u8d85\u6e05"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$700(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/fragment/CacheParams;

    move-result-object v1

    const-string v2, "7"

    iput-object v2, v1, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    .line 349
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFormatSpinner onItemSelected position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$700(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/fragment/CacheParams;

    move-result-object v3

    iget-object v3, v3, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 343
    :cond_1
    const-string v1, "\u9ad8\u6e05"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$700(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/fragment/CacheParams;

    move-result-object v1

    const-string v2, "1"

    iput-object v2, v1, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0

    .line 345
    :cond_2
    const-string v1, "\u6807\u6e05"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCacheFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoCacheFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->access$700(Lcom/tudou/detail/fragment/VideoCacheFragment;)Lcom/tudou/detail/fragment/CacheParams;

    move-result-object v1

    const-string v2, "5"

    iput-object v2, v1, Lcom/tudou/detail/fragment/CacheParams;->format:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
