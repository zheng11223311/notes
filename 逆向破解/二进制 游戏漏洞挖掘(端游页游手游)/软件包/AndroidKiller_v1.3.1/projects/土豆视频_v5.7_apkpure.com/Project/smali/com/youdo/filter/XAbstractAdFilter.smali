.class public abstract Lcom/youdo/filter/XAbstractAdFilter;
.super Ljava/lang/Object;


# instance fields
.field protected mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

.field protected managerContext:Lcom/youdo/XAdManagerContext;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XNativeAdResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    iget-object v0, p1, Lcom/youdo/vo/XNativeAdResponse;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object v0, p0, Lcom/youdo/filter/XAbstractAdFilter;->managerContext:Lcom/youdo/XAdManagerContext;

    return-void
.end method


# virtual methods
.method protected abstract afterFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youdo/vo/XNativeAdResponse;",
            "Lcom/youdo/XAdManagerContext;",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract beforeFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;)V
.end method

.method protected abstract doFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;Lcom/youdo/vo/XAdInstance;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youdo/vo/XNativeAdResponse;",
            "Lcom/youdo/XAdManagerContext;",
            "Lcom/youdo/vo/XAdInstance;",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;)V"
        }
    .end annotation
.end method

.method public filter()V
    .locals 6

    iget-object v0, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    iget-object v1, p0, Lcom/youdo/filter/XAbstractAdFilter;->managerContext:Lcom/youdo/XAdManagerContext;

    invoke-virtual {p0, v0, v1}, Lcom/youdo/filter/XAbstractAdFilter;->beforeFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;)V

    iget-object v0, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getFiltedAds()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    iget-object v5, p0, Lcom/youdo/filter/XAbstractAdFilter;->managerContext:Lcom/youdo/XAdManagerContext;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {p0, v4, v5, v0, v3}, Lcom/youdo/filter/XAbstractAdFilter;->doFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;Lcom/youdo/vo/XAdInstance;Ljava/util/List;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    iget-object v1, p0, Lcom/youdo/filter/XAbstractAdFilter;->managerContext:Lcom/youdo/XAdManagerContext;

    invoke-virtual {p0, v0, v1, v3}, Lcom/youdo/filter/XAbstractAdFilter;->afterFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;Ljava/util/List;)V

    iget-object v0, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0, v3}, Lcom/youdo/vo/XNativeAdResponse;->setFiltedAds(Ljava/util/List;)V

    return-void
.end method

.method public getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    iget-object v0, p0, Lcom/youdo/filter/XAbstractAdFilter;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    return-object v0
.end method
