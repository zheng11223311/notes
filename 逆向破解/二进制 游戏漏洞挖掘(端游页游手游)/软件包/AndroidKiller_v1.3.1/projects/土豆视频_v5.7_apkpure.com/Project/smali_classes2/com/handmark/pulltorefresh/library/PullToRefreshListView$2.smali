.class Lcom/handmark/pulltorefresh/library/PullToRefreshListView$2;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChange(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 441
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->access$100(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 443
    :cond_0
    return-void
.end method
