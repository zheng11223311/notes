.class public Lcom/youdo/vo/XAdInstance;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/vo/interfaces/IXAdAtmJsonFormatable;
.implements Ljava/lang/Comparable;
.implements Lorg/openad/common/interfaces/Mergeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/vo/XAdInstance$XAdTargeting;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/youdo/vo/interfaces/IXAdAtmJsonFormatable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/youdo/vo/XAdInstance;",
        ">;",
        "Lorg/openad/common/interfaces/Mergeable",
        "<",
        "Lcom/youdo/vo/XAdInstance;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XAdInstance"


# instance fields
.field public AT:Ljava/lang/String;

.field public CF:Ljava/lang/String;

.field public PRI:I

.field public SDKID:Ljava/lang/String;

.field public VID:Ljava/lang/String;

.field public beMerged:Z

.field public campaignID:Ljava/lang/String;

.field public complete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdHttpTracking;",
            ">;"
        }
    .end annotation
.end field

.field private creativeCachedPercent:F

.field public creativeID:Ljava/lang/String;

.field public creativeLocalURL:Ljava/lang/String;

.field public creativeRemoteURL:Ljava/lang/String;

.field public creativeSuffix:Ljava/lang/String;

.field public cuepoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdHttpTracking;",
            ">;"
        }
    .end annotation
.end field

.field public deliveryedTimes:I

.field public duration:I

.field public impression:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdHttpTracking;",
            ">;"
        }
    .end annotation
.end field

.field private mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

.field public mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

.field public mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;

.field private mData:Lorg/json/JSONObject;

.field private mIsNative:Z

.field public mTrackingProfile:Lcom/youdo/vo/XAdTrackingProfile;

.field public shouldUpdateCreativeAsset:Ljava/lang/Boolean;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XNativeAdResponse;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->campaignID:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->complete:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    iput v2, p0, Lcom/youdo/vo/XAdInstance;->PRI:I

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeSuffix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->shouldUpdateCreativeAsset:Ljava/lang/Boolean;

    iput v1, p0, Lcom/youdo/vo/XAdInstance;->creativeCachedPercent:F

    iput-boolean v2, p0, Lcom/youdo/vo/XAdInstance;->mIsNative:Z

    iput-boolean v2, p0, Lcom/youdo/vo/XAdInstance;->beMerged:Z

    iput v2, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    sget-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$CreativeType;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;

    iput-object p1, p0, Lcom/youdo/vo/XAdInstance;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    const-string v0, "XADSDK_ORIGIN_RS"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youdo/vo/XAdInstance;->mIsNative:Z

    iget-boolean v0, p0, Lcom/youdo/vo/XAdInstance;->mIsNative:Z

    if-eqz v0, :cond_0

    const-string v0, "native"

    :goto_0
    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->source:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->isNative()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/youdo/vo/XAdInstance;->setCreativeCachedPercent(F)V

    invoke-direct {p0, p2}, Lcom/youdo/vo/XAdInstance;->setDataProvider(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const-string v0, "online"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private createTrackingProfile()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/youdo/vo/XAdTrackingProfile;

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdHttpTracking;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdHttpTracking;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/URIUtil;->getAllQueryParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/youdo/vo/XAdTrackingProfile;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/youdo/vo/XAdInstance;->mTrackingProfile:Lcom/youdo/vo/XAdTrackingProfile;

    :cond_0
    return-void
.end method

.method private fetchTrackings(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdHttpTracking;",
            ">;"
        }
    .end annotation

    const/4 v2, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    :goto_1
    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    new-instance v7, Lcom/youdo/vo/XAdHttpTracking;

    const-string v8, "U"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v3, v1}, Lcom/youdo/vo/XAdHttpTracking;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XAdInstance"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v5

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method private setDataProvider(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    :try_start_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "PRI"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youdo/vo/XAdInstance;->PRI:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "XADSDK_DEIVRED_TIMES"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "XADSDK_PCT_OF_CACHING"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XAdInstance;->setCreativeCachedPercent(F)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "VQT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeSuffix:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "CF"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->CF:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "SDKID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->SDKID:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "AT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->AT:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "RST"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/constants/IOpenAdContants$CreativeType;->parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$CreativeType;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    const-string v0, "SUS"

    invoke-direct {p0, v0}, Lcom/youdo/vo/XAdInstance;->fetchTrackings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    const-string v0, "SUE"

    invoke-direct {p0, v0}, Lcom/youdo/vo/XAdInstance;->fetchTrackings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->complete:Ljava/util/List;

    const-string v0, "SU"

    invoke-direct {p0, v0}, Lcom/youdo/vo/XAdInstance;->fetchTrackings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    :try_start_9
    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->isNative()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "XADSDK_ORIGIN_RS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "AL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youdo/vo/XAdInstance;->duration:I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5

    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "IE"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    invoke-direct {p0}, Lcom/youdo/vo/XAdInstance;->createTrackingProfile()V

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "XAdInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impression.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slottype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isnative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->isNative()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    sget-object v1, Lorg/openad/constants/IOpenAdContants$CreativeType;->IMG:Lorg/openad/constants/IOpenAdContants$CreativeType;

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    invoke-static {v1}, Lorg/openad/common/util/URIUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youdo/XNativeAdManager;->getNativeAdAssetFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    invoke-virtual {v2}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/youdo/vo/XAdInstance$XAdTargeting;

    invoke-direct {v0, p0, p1}, Lcom/youdo/vo/XAdInstance$XAdTargeting;-><init>(Lcom/youdo/vo/XAdInstance;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    return-void

    :catch_0
    move-exception v0

    iput v2, p0, Lcom/youdo/vo/XAdInstance;->PRI:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iput v2, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XAdInstance;->setCreativeCachedPercent(F)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$CreativeType;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;

    goto/16 :goto_8

    :cond_3
    :try_start_c
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mData:Lorg/json/JSONObject;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    goto/16 :goto_a

    :catch_5
    move-exception v0

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/youdo/vo/XAdInstance;->duration:I

    goto/16 :goto_b

    :catch_6
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    goto/16 :goto_c

    :catch_7
    move-exception v0

    goto/16 :goto_7

    :catch_8
    move-exception v0

    goto/16 :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_3
.end method

.method private tracking2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdHttpTracking;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdHttpTracking;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdHttpTracking;->toNativeJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public canMerge2(Lcom/youdo/vo/XAdInstance;)Z
    .locals 2

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->campaignID:Ljava/lang/String;

    iget-object v1, p1, Lcom/youdo/vo/XAdInstance;->campaignID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    iget-object v1, p1, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canMerge2(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {p0, p1}, Lcom/youdo/vo/XAdInstance;->canMerge2(Lcom/youdo/vo/XAdInstance;)Z

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/youdo/vo/XAdInstance;)I
    .locals 2

    iget v0, p1, Lcom/youdo/vo/XAdInstance;->PRI:I

    iget v1, p0, Lcom/youdo/vo/XAdInstance;->PRI:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {p0, p1}, Lcom/youdo/vo/XAdInstance;->compareTo(Lcom/youdo/vo/XAdInstance;)I

    move-result v0

    return v0
.end method

.method public getCreativeCachedPercent()F
    .locals 1

    iget v0, p0, Lcom/youdo/vo/XAdInstance;->creativeCachedPercent:F

    return v0
.end method

.method public getCreativeType()Lorg/openad/constants/IOpenAdContants$CreativeType;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;

    return-object v0
.end method

.method public getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mAdResponse:Lcom/youdo/vo/XNativeAdResponse;

    return-object v0
.end method

.method public isCreativeAssetCompletelyCached()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/youdo/vo/XAdInstance;->creativeCachedPercent:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeliverableAd()Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->isRealZombieAd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->isCreativeAssetCompletelyCached()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    iget-object v1, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iget v1, v1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeZombieAd()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    iget-object v1, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iget v1, v1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->isRealZombieAd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/vo/XAdInstance;->mIsNative:Z

    return v0
.end method

.method public isRealZombieAd()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youdo/vo/XAdInstance$XAdTargeting;->isUnDeliverableButNotOutOfTime(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lcom/youdo/vo/XAdInstance;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/youdo/vo/XAdInstance;->canMerge2(Lcom/youdo/vo/XAdInstance;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lcom/youdo/vo/XAdInstance;->beMerged:Z

    iput-boolean v1, p0, Lcom/youdo/vo/XAdInstance;->beMerged:Z

    iget v0, p1, Lcom/youdo/vo/XAdInstance;->PRI:I

    iput v0, p0, Lcom/youdo/vo/XAdInstance;->PRI:I

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->complete:Ljava/util/List;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->complete:Ljava/util/List;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->AT:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->AT:Ljava/lang/String;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->CF:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->CF:Ljava/lang/String;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->SDKID:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->SDKID:Ljava/lang/String;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->creativeSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeSuffix:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->isLinear()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;

    iget-object v3, p1, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->shouldUpdateCreativeAsset:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->isNonLinear()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->shouldUpdateCreativeAsset:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->shouldUpdateCreativeAsset:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/youdo/vo/XAdInstance;->createTrackingProfile()V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/youdo/vo/XAdInstance;

    invoke-virtual {p0, p1}, Lcom/youdo/vo/XAdInstance;->merge(Lcom/youdo/vo/XAdInstance;)V

    return-void
.end method

.method public setCreativeCachedPercent(F)V
    .locals 0

    iput p1, p0, Lcom/youdo/vo/XAdInstance;->creativeCachedPercent:F

    return-void
.end method

.method public toLiveJSONObject()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/vo/XAdInstance;->getXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->getAdSlotType()Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youdo/vo/formatter/XAdResponseBuilder;->format(Lcom/youdo/vo/XAdInstance;Lorg/openad/constants/IOpenAdContants$AdSlotType;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toNativeJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "XADSDK_DEIVRED_TIMES"

    iget v2, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "XADSDK_ORIGIN_RS"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->creativeRemoteURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "XADSDK_PCT_OF_CACHING"

    iget v2, p0, Lcom/youdo/vo/XAdInstance;->creativeCachedPercent:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "RS"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "SUS"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/youdo/vo/XAdInstance;->tracking2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "SU"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/youdo/vo/XAdInstance;->tracking2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "SUE"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->complete:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/youdo/vo/XAdInstance;->tracking2JSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "TM"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iget-object v2, v2, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalTM:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "FR"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iget-object v2, v2, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PRI"

    iget v2, p0, Lcom/youdo/vo/XAdInstance;->PRI:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "DR"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->mAdTargeting:Lcom/youdo/vo/XAdInstance$XAdTargeting;

    iget-object v2, v2, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalDR:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "AL"

    iget v2, p0, Lcom/youdo/vo/XAdInstance;->duration:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "VQT"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->creativeSuffix:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "RST"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->mCreativeType:Lorg/openad/constants/IOpenAdContants$CreativeType;

    invoke-virtual {v2}, Lorg/openad/constants/IOpenAdContants$CreativeType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "VID"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->VID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "IE"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->CF:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "CF"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->CF:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->SDKID:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "SDKID"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->SDKID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance;->AT:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "AT"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->AT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "XAdInstance"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toTestNativeJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "XADSDK_DEIVRED_TIMES"

    iget v2, p0, Lcom/youdo/vo/XAdInstance;->deliveryedTimes:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "XADSDK_PCT_OF_CACHING"

    iget v2, p0, Lcom/youdo/vo/XAdInstance;->creativeCachedPercent:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "IE"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance;->creativeID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "XAdInstance"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
