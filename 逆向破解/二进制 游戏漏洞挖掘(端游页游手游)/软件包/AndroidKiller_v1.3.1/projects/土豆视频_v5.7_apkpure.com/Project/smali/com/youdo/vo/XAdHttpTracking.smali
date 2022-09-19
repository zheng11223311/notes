.class public Lcom/youdo/vo/XAdHttpTracking;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/vo/interfaces/IXAdAtmJsonFormatable;


# static fields
.field public static final TRACKING_TYPE_ALIBABA_SDK:I = 0x2

.field public static final TRACKING_TYPE_MMA_SDK:I = 0x1

.field public static final TRACKING_TYPE_YOUDO_API:I = 0x0

.field public static final TRACKING_TYPE_YOUDO_SDK:I = 0x9


# instance fields
.field private SDK:I

.field private id:Ljava/lang/String;

.field private time:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p1, p2, p3}, Lcom/youdo/vo/XAdHttpTracking;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/youdo/vo/XAdHttpTracking;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/youdo/vo/XAdHttpTracking;->uri:Ljava/lang/String;

    iput p3, p0, Lcom/youdo/vo/XAdHttpTracking;->time:I

    iput p4, p0, Lcom/youdo/vo/XAdHttpTracking;->SDK:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdHttpTracking;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSDK()I
    .locals 1

    iget v0, p0, Lcom/youdo/vo/XAdHttpTracking;->SDK:I

    return v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/youdo/vo/XAdHttpTracking;->time:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdHttpTracking;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toNativeJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "U"

    invoke-virtual {p0}, Lcom/youdo/vo/XAdHttpTracking;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/youdo/vo/XAdHttpTracking;->getTime()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "T"

    invoke-virtual {p0}, Lcom/youdo/vo/XAdHttpTracking;->getTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/youdo/vo/XAdHttpTracking;->getSDK()I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "SDK"

    invoke-virtual {p0}, Lcom/youdo/vo/XAdHttpTracking;->getSDK()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method
