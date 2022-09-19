.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;
.super Lcom/tudou/service/download/OnPreparedCallback;
.source "DetailSerisCachePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;->startCache(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

.field final synthetic val$itemcode:Ljava/lang/String;

.field final synthetic val$page:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iput-object p2, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$itemcode:Ljava/lang/String;

    iput p3, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$page:I

    iput p4, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$pos:I

    invoke-direct {p0}, Lcom/tudou/service/download/OnPreparedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOneFailed(Ljava/lang/String;)V

    .line 613
    const-string v0, "\u89c6\u9891\u4e0d\u80fd\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8$1;-><init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    :cond_0
    return-void
.end method

.method public onOnePrepared(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-super {p0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOnePrepared(Ljava/lang/String;)V

    .line 604
    const-string v0, "\u89c6\u9891\u6dfb\u52a0\u81f3\u7f13\u5b58\u63d0\u793a\u66dd\u5149"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c6\u9891\u7f13\u5b58"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$8;->val$itemcode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$1200(Lcom/youku/phone/detail/DetailSerisCachePopWindow;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public onfinish(Z)V
    .locals 0
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 598
    return-void
.end method
