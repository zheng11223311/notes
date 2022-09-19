.class public Lcom/youdo/vo/XNativeAdResponsePackage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/vo/interfaces/IXAdAtmJsonFormatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "XNativeAdResponsePackage"


# instance fields
.field private mAdResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XNativeAdResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XNativeAdResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/youdo/vo/XNativeAdResponsePackage;->updateDataProvider(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAllPlayableXAds(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0, p1}, Lcom/youdo/vo/XNativeAdResponse;->getAllPlayableXAds(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getAllXAds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAllXAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getCachedAdCreativeAsset()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getCachedAdCreativeAsset()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getCachedVideoAdCreativeAsset()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getPrerollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getCachedAdCreativeAsset()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMidrollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->MIDROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPauserollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPostrollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->POSTROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPrerollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getXAdResponseByAdSlotType(Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lcom/youdo/vo/XNativeAdResponse;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public removeZombieAds()V
    .locals 3

    const-string v0, "XNativeAdResponsePackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeZombieAds  size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->removeZombieAds()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toNativeJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    :try_start_0
    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->toNativeJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "XNativeAdResponsePackage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-object v2
.end method

.method public toTestNativeJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XNativeAdResponse;

    :try_start_0
    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->toTestNativeJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "XNativeAdResponsePackage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-object v2
.end method

.method public updateDataProvider(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XNativeAdResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/youdo/vo/XNativeAdResponsePackage;->mAdResponses:Ljava/util/List;

    return-void
.end method
