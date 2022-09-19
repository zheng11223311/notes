.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 851
    const-string v0, "onClick_retry"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 854
    :cond_0
    const-string v0, "Youku"

    const-string v1, "detail series cache retry onClick"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->excueGetPlaylist(Ljava/lang/String;I)V

    .line 860
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$11;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->excueGetRecomment(Ljava/lang/String;I)V

    goto :goto_1
.end method
