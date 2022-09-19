.class Lcom/tudou/ui/fragment/UploadFailedFragment$6;
.super Ljava/lang/Object;
.source "UploadFailedFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/UploadFailedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pullToRefresh()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "\u53d1\u5e03\u5931\u8d25\u5217\u8868\u4e0b\u62c9\u5237\u65b0"

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/CheckedActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$900(Lcom/tudou/ui/fragment/UploadFailedFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$1000(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment$6;->pullToRefresh()V

    .line 304
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$6;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$800(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    .line 309
    return-void
.end method
