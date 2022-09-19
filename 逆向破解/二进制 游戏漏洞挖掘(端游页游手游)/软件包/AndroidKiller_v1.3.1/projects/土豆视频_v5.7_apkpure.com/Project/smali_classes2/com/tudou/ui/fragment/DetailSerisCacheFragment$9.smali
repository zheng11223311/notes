.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;
.super Lcom/tudou/service/download/OnPreparedCallback;
.source "DetailSerisCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->startCache(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

.field final synthetic val$itemcode:Ljava/lang/String;

.field final synthetic val$page:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$itemcode:Ljava/lang/String;

    iput p3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$page:I

    iput p4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$pos:I

    invoke-direct {p0}, Lcom/tudou/service/download/OnPreparedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOneFailed(Ljava/lang/String;)V

    .line 689
    const-string v0, "\u89c6\u9891\u4e0d\u80fd\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9$1;-><init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    :cond_0
    return-void
.end method

.method public onOnePrepared(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 679
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOnePrepared(Ljava/lang/String;)V

    .line 680
    const-string v0, "\u89c6\u9891\u6dfb\u52a0\u81f3\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$9;->val$itemcode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public onfinish(Z)V
    .locals 0
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 674
    return-void
.end method
