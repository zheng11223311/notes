.class public interface abstract Lcom/handmark/pulltorefresh/library/IPullToRefresh;
.super Ljava/lang/Object;
.source "IPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.end method

.method public abstract getFilterTouchEvents()Z
.end method

.method public abstract getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.end method

.method public abstract getRefreshableView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getShowViewWhileRefreshing()Z
.end method

.method public abstract isDisableScrollingWhileRefreshing()Z
.end method

.method public abstract isPullToRefreshEnabled()Z
.end method

.method public abstract isPullToRefreshOverScrollEnabled()Z
.end method

.method public abstract isRefreshing()Z
.end method

.method public abstract onRefreshComplete()V
.end method

.method public abstract setDisableScrollingWhileRefreshing(Z)V
.end method

.method public abstract setFilterTouchEvents(Z)V
.end method

.method public abstract setLastUpdatedLabel(Ljava/lang/CharSequence;)V
.end method

.method public abstract setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.end method

.method public abstract setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.end method

.method public abstract setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPullLabel(Ljava/lang/CharSequence;)V
.end method

.method public abstract setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.end method

.method public abstract setPullToRefreshOverScrollEnabled(Z)V
.end method

.method public abstract setRefreshing()V
.end method

.method public abstract setRefreshing(Z)V
.end method

.method public abstract setRefreshingLabel(Ljava/lang/CharSequence;)V
.end method

.method public abstract setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.end method

.method public abstract setReleaseLabel(Ljava/lang/CharSequence;)V
.end method

.method public abstract setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.end method

.method public abstract setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setShowViewWhileRefreshing(Z)V
.end method
