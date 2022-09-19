.class Lcom/tudou/ui/fragment/CheckedFragment$6;
.super Ljava/lang/Object;
.source "CheckedFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CheckedFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/CheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CheckedFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tudou/ui/fragment/CheckedFragment$6;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pullToRefresh()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "\u53d1\u5e03\u5931\u8d25\u5217\u8868\u4e0b\u62c9\u5237\u65b0"

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/CheckedActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tudou/ui/fragment/CheckedFragment$6;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CheckedFragment;->access$200(Lcom/tudou/ui/fragment/CheckedFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 291
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CheckedFragment$6;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CheckedFragment;->access$800(Lcom/tudou/ui/fragment/CheckedFragment;)V

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
    .line 277
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CheckedFragment$6;->pullToRefresh()V

    .line 278
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
    .line 282
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/CheckedFragment$6;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CheckedFragment;->access$700(Lcom/tudou/ui/fragment/CheckedFragment;)V

    .line 283
    return-void
.end method
