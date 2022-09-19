.class Lcom/tudou/ui/fragment/HomeFragment$15;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/youku/widget/TudouModuleH5$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadStarted()V
    .locals 2

    .prologue
    .line 1764
    const-string v0, "AD"

    const-string v1, "OnLoadStarted"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2500(Lcom/tudou/ui/fragment/HomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2600(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 1768
    :cond_0
    return-void
.end method

.method public onAdShowExposure()V
    .locals 2

    .prologue
    .line 1791
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v0, v0, Lcom/youku/vo/AdResult$AdHTML;->CUM:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->showExposure(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    :goto_0
    return-void

    .line 1792
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLoadError()V
    .locals 2

    .prologue
    .line 1781
    const-string v0, "AD"

    const-string v1, "onLoadError"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2500(Lcom/tudou/ui/fragment/HomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2700(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 1785
    :cond_0
    return-void
.end method

.method public onLoadFinished()V
    .locals 2

    .prologue
    .line 1772
    const-string v0, "AD"

    const-string v1, "onLoadFinished"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2500(Lcom/tudou/ui/fragment/HomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HomeFragment;->access$2700(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 1775
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment$15;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HomeFragment;->showAD()V

    .line 1777
    :cond_0
    return-void
.end method
