.class public Lcom/youdo/vo/XAdInstance$XAdTargeting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/vo/XAdInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XAdTargeting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XAdInstance.XAdTargeting"


# instance fields
.field public campaignId:Ljava/lang/String;

.field public channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frequencyCappingOfCampaign:I

.field public isWhiteChannels:Ljava/lang/Boolean;

.field public mFrequencyCapping4LifeCyc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;",
            ">;"
        }
    .end annotation
.end field

.field public mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;

.field private mObject:Lorg/json/JSONObject;

.field public originalDR:Lorg/json/JSONObject;

.field public originalFR:Lorg/json/JSONObject;

.field public originalTM:Lorg/json/JSONArray;

.field final synthetic this$0:Lcom/youdo/vo/XAdInstance;

.field public whiteVideoGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XAdInstance;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->this$0:Lcom/youdo/vo/XAdInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->channels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->whiteVideoGroups:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mFrequencyCapping4LifeCyc:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    iput-object p2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mObject:Lorg/json/JSONObject;

    :try_start_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mObject:Lorg/json/JSONObject;

    const-string v3, "DR"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalDR:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalDR:Lorg/json/JSONObject;

    const-string v3, "CHNL"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->isWhiteChannels:Ljava/lang/Boolean;

    move v0, v2

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->channels:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalDR:Lorg/json/JSONObject;

    const-string v2, "VG"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->whiteVideoGroups:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "XAdInstance.XAdTargeting"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mObject:Lorg/json/JSONObject;

    const-string v1, "TM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalTM:Lorg/json/JSONArray;

    new-instance v0, Lcom/youdo/vo/XAdNativeLifeCyc;

    iget-object v1, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalTM:Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lcom/youdo/vo/XAdNativeLifeCyc;-><init>(Lorg/json/JSONArray;)V

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mObject:Lorg/json/JSONObject;

    const-string v1, "FR"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->campaignId:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    const v0, 0x7fffffff

    :goto_4
    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mFrequencyCapping4LifeCyc:Ljava/util/List;

    new-instance v2, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;

    iget-object v3, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;

    invoke-virtual {v3}, Lcom/youdo/vo/XAdNativeLifeCyc;->calculateTotalDays()I

    move-result v3

    iget v4, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    invoke-direct {v2, p0, v3, v4}, Lcom/youdo/vo/XAdInstance$XAdTargeting$FrequencyCapping;-><init>(Lcom/youdo/vo/XAdInstance$XAdTargeting;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    :cond_3
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    const-string v1, "ID"

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->campaignId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    const-string v1, "N"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    return-void

    :catch_1
    move-exception v0

    const-string v1, "XAdInstance.XAdTargeting"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :try_start_3
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "XAdInstance.XAdTargeting"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public canTargeting2Channel(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->isWhiteChannels:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->channels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public canTargeting2Time(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;

    invoke-virtual {v0, p1}, Lcom/youdo/vo/XAdNativeLifeCyc;->isDeliverableTime(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isUnDeliverableButNotOutOfTime(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mNativeLifeCycOfCampaign:Lcom/youdo/vo/XAdNativeLifeCyc;

    invoke-virtual {v0, p1}, Lcom/youdo/vo/XAdNativeLifeCyc;->isInTime(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public merge(Lcom/youdo/vo/XAdInstance$XAdTargeting;)V
    .locals 1

    iget v0, p1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    iput v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->frequencyCappingOfCampaign:I

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mFrequencyCapping4LifeCyc:Ljava/util/List;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->mFrequencyCapping4LifeCyc:Ljava/util/List;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalDR:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalDR:Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalFR:Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalTM:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/youdo/vo/XAdInstance$XAdTargeting;->originalTM:Lorg/json/JSONArray;

    return-void
.end method
