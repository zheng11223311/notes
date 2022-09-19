.class public Lcom/youdo/filter/XAdCycFilter;
.super Lcom/youdo/filter/XAbstractAdFilter;

# interfaces
.implements Lcom/youdo/filter/IXAdFilter;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XNativeAdResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/filter/XAbstractAdFilter;-><init>(Lcom/youdo/vo/XNativeAdResponse;)V

    return-void
.end method


# virtual methods
.method protected afterFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method protected beforeFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;)V
    .locals 0

    return-void
.end method

.method protected doFilter(Lcom/youdo/vo/XNativeAdResponse;Lcom/youdo/XAdManagerContext;Lcom/youdo/vo/XAdInstance;Ljava/util/List;)V
    .locals 2
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

    iget-object v0, p3, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youdo/vo/XAdInstance$XAdTargeting;->canTargeting2Time(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
