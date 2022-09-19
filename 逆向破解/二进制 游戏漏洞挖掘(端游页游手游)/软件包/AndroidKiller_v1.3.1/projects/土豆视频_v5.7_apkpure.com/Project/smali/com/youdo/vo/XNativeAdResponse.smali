.class public Lcom/youdo/vo/XNativeAdResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/vo/interfaces/IXAdAtmJsonFormatable;


# static fields
.field public static final TAG:Ljava/lang/String; = "XNativeAdResponse"


# instance fields
.field private filtedAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mAdHttpRequestParameter:Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;

.field private mAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDescriptor:Lorg/openad/common/error/CommonErrorDescriptor;

.field private mIsNative:Z

.field private mJsonObject:Lorg/json/JSONObject;

.field private mSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public managerContext:Lcom/youdo/XAdManagerContext;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youdo/XAdManagerContext;Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openad/common/error/CommonErrorDescriptor;

    invoke-direct {v0}, Lorg/openad/common/error/CommonErrorDescriptor;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mErrorDescriptor:Lorg/openad/common/error/CommonErrorDescriptor;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mIsNative:Z

    iput-object p1, p0, Lcom/youdo/vo/XNativeAdResponse;->managerContext:Lcom/youdo/XAdManagerContext;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mIsNative:Z

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "native"

    :goto_0
    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->source:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/youdo/vo/XNativeAdResponse;->setDataProvider(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->refreshFiltedAds()V

    return-void

    :cond_0
    const-string v0, "online"

    goto :goto_0
.end method

.method private fetchValueByName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private isValidRawAdJSONObject(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "RS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SUS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRawAdResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "VAL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private mergeAdInstance(Lcom/youdo/vo/XAdInstance;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    iget-object v0, v0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v0, p1}, Lcom/youdo/vo/XAdInstance;->merge(Lcom/youdo/vo/XAdInstance;)V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private setDataProvider(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/openad/common/error/CommonErrorDescriptor;

    const-string/jumbo v1, "status"

    invoke-direct {p0, p1, v1}, Lcom/youdo/vo/XNativeAdResponse;->fetchValueByName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-direct {p0, p1, v2}, Lcom/youdo/vo/XNativeAdResponse;->fetchValueByName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "desc"

    invoke-direct {p0, p1, v3}, Lcom/youdo/vo/XNativeAdResponse;->fetchValueByName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/common/error/CommonErrorDescriptor;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Lorg/openad/common/error/CommonErrorDescriptor;->hasError()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mErrorDescriptor:Lorg/openad/common/error/CommonErrorDescriptor;

    iput-object p1, p0, Lcom/youdo/vo/XNativeAdResponse;->mJsonObject:Lorg/json/JSONObject;

    :try_start_1
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "P"

    invoke-direct {p0, v0, v1}, Lcom/youdo/vo/XNativeAdResponse;->fetchValueByName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->parse(I)Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "VAL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/youdo/vo/XNativeAdResponse;->isValidRawAdJSONObject(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/youdo/vo/XAdInstance;

    invoke-direct {v3, p0, v0}, Lcom/youdo/vo/XAdInstance;-><init>(Lcom/youdo/vo/XNativeAdResponse;Lorg/json/JSONObject;)V

    invoke-direct {p0, v3}, Lcom/youdo/vo/XNativeAdResponse;->mergeAdInstance(Lcom/youdo/vo/XAdInstance;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v0, Lorg/openad/common/error/CommonErrorDescriptor;

    invoke-direct {v0}, Lorg/openad/common/error/CommonErrorDescriptor;-><init>()V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    iput-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "XNativeAdResponse"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mSlotType:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-object v0
.end method

.method public getAll3RdPartyXAds()Ljava/util/List;
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAllDeliverAndPlayableXAds()Ljava/util/List;
    .locals 5
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

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponse;->getXAdsBy(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdInstance;->isDeliverableAd()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAllPlayableXAds(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p0, p1}, Lcom/youdo/vo/XNativeAdResponse;->getXAdsBy(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllXAds()Ljava/util/List;
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

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    return-object v0
.end method

.method public getCachedAdCreativeAsset()Ljava/util/List;
    .locals 5
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

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getAllXAds()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdInstance;->getCreativeCachedPercent()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getFiltedAds()Ljava/util/List;
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

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->filtedAds:Ljava/util/List;

    return-object v0
.end method

.method public getXAdHttpRequestParameter()Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAdHttpRequestParameter:Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;

    return-object v0
.end method

.method public getXAdsBy(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 4
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdInstance;->isCreativeAssetCompletelyCached()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_2
.end method

.method public isNative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mIsNative:Z

    return v0
.end method

.method public merge(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0, p1}, Lcom/youdo/vo/XNativeAdResponse;->isValidRawAdResponse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/youdo/vo/XNativeAdResponse;->setDataProvider(Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method public refreshFiltedAds()V
    .locals 3

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne v0, v1, :cond_0

    const-string v0, "XNativeAdResponse"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getAllDeliverAndPlayableXAds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XNativeAdResponse;->setFiltedAds(Ljava/util/List;)V

    const-string v0, "XNativeAdResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/vo/XNativeAdResponse;->filtedAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeZombieAds()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "XNativeAdResponse"

    const-string/jumbo v1, "removeZombieAds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdInstance;->isRealZombieAd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "XNativeAdResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeZombieAds, zombies="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    iget-object v1, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "XNativeAdResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----->>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/FileUtils;->deleteFileRecursive(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->refreshFiltedAds()V

    return-void
.end method

.method public retrieveBestXAd()Lcom/youdo/vo/XAdInstance;
    .locals 7

    const/4 v3, 0x0

    const-string v0, "XNativeAdResponse"

    const-string/jumbo v1, "retrieveBestXAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->refreshFiltedAds()V

    const/4 v4, 0x0

    new-instance v0, Lcom/youdo/filter/XAdFrequencyCappingFilter;

    invoke-direct {v0, p0}, Lcom/youdo/filter/XAdFrequencyCappingFilter;-><init>(Lcom/youdo/vo/XNativeAdResponse;)V

    invoke-virtual {v0}, Lcom/youdo/filter/XAdFrequencyCappingFilter;->filter()V

    const-string v0, "XNativeAdResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after FC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getFiltedAds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/youdo/filter/XAdCycFilter;

    invoke-direct {v0, p0}, Lcom/youdo/filter/XAdCycFilter;-><init>(Lcom/youdo/vo/XNativeAdResponse;)V

    invoke-virtual {v0}, Lcom/youdo/filter/XAdCycFilter;->filter()V

    const-string v0, "XNativeAdResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after cyc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getFiltedAds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/youdo/filter/XAdPRIFilter;

    invoke-direct {v0, p0}, Lcom/youdo/filter/XAdPRIFilter;-><init>(Lcom/youdo/vo/XNativeAdResponse;)V

    invoke-virtual {v0}, Lcom/youdo/filter/XAdPRIFilter;->filter()V

    const-string v0, "XNativeAdResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after PRI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getFiltedAds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getFiltedAds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {v1, v0}, Lcom/youdo/vo/XAdInstance;->compareTo(Lcom/youdo/vo/XAdInstance;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Lorg/openad/common/util/MathUtils;->generateRandom(II)I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    iget v1, v0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v4

    goto :goto_1
.end method

.method public setFiltedAds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/youdo/vo/XNativeAdResponse;->filtedAds:Ljava/util/List;

    return-void
.end method

.method public setXAdHttpRequestParameter(Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/vo/XNativeAdResponse;->mAdHttpRequestParameter:Lcom/youdo/vo/parameter/AbstractXAdHttpRequestParameter;

    return-void
.end method

.method public toNativeJSONObject()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youdo/vo/formatter/XAdResponseBuilder;->format(Ljava/util/List;Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toTestNativeJSONObject()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/youdo/vo/XNativeAdResponse;->mAds:Ljava/util/List;

    invoke-virtual {p0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youdo/vo/formatter/XAdResponseBuilder;->format4test(Ljava/util/List;Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
