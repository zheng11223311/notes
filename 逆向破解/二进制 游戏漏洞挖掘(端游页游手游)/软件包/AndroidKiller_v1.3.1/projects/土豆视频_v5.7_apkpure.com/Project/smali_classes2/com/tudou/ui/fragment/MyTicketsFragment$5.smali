.class Lcom/tudou/ui/fragment/MyTicketsFragment$5;
.super Ljava/lang/Object;
.source "MyTicketsFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTicketsFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 5
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
    .line 281
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$102(Lcom/tudou/ui/fragment/MyTicketsFragment;I)I

    .line 282
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 283
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    const-string v1, "1"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$100(Lcom/tudou/ui/fragment/MyTicketsFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$1200(Lcom/tudou/ui/fragment/MyTicketsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 5
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
    .line 288
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    const-string v1, "1"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$100(Lcom/tudou/ui/fragment/MyTicketsFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$1200(Lcom/tudou/ui/fragment/MyTicketsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
