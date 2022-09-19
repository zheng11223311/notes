.class public Lcom/mobisage/android/MobiSageAdProductPlacement;
.super Lcom/mobisage/android/MobiSageAdView;
.source "MobiSageAdProductPlacement.java"


# static fields
.field private static final ACTION_TYPE:I = 0xf

.field private static final CONTENT_TYPE:J = 0x166L


# instance fields
.field private mAdViewHeight:I

.field private mAdViewWidth:I

.field mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

.field mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacement;->initMobiSageAdView(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showCloseBtn"    # Z

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/mobisage/android/MobiSageAdProductPlacement;-><init>(Landroid/content/Context;ZII)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showCloseBtn"    # Z
    .param p3, "affiliateId"    # I
    .param p4, "affiliateSourceType"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p3, p4}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;II)V

    .line 42
    iput-boolean p2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mShowCloseBtn:Z

    .line 44
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacement;->initMobiSageAdView(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic destoryAdView()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->destoryAdView()V

    return-void
.end method

.method public bridge synthetic getCustomData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->getCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->getKeyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initMobiSageAdView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const/4 v1, 0x1

    iput v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDisplayType:I

    .line 161
    const-wide/16 v2, 0x166

    iput-wide v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mContentType:J

    .line 162
    const/16 v1, 0xf

    iput v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mActionType:I

    .line 164
    new-instance v1, Lcom/mobisage/android/MobiSageAdProductPlacement$1;

    invoke-direct {v1, p0}, Lcom/mobisage/android/MobiSageAdProductPlacement$1;-><init>(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 223
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-super {p0, v1}, Lcom/mobisage/android/MobiSageAdView;->setMobiSageAdViewListener(Lcom/mobisage/android/IMobiSageAdViewListener;)V

    .line 225
    invoke-static {}, Lcom/mobisage/android/MobiSageAdSize;->getProductPlacementSize()Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;

    move-result-object v0

    .line 226
    .local v0, "adSize":Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;
    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSize;->getProductPlacementWidth(Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;)I

    move-result v1

    iput v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdWidth:I

    .line 227
    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSize;->getProductPlacementHeight(Lcom/mobisage/android/MobiSageAdSize$ProductPlacement;)I

    move-result v1

    iput v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdHeight:I

    .line 229
    sget v1, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewWidth:I

    .line 230
    sget v1, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewHeight:I

    .line 232
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->initMobiSageAdView(Landroid/content/Context;)V

    .line 234
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdProductPlacement;->sendADRequest()V

    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 76
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewWidth:I

    invoke-static {v2, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    iput v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    .line 77
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewHeight:I

    invoke-static {v2, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    iput v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 80
    .local v1, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 82
    .local v0, "heightMode":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    if-nez v2, :cond_0

    .line 85
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewWidth:I

    iput v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    .line 86
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewHeight:I

    iput v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    .line 88
    :cond_0
    if-nez v1, :cond_1

    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    if-eqz v2, :cond_1

    .line 90
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewWidth:I

    iget v3, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewHeight:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    .line 92
    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    if-eqz v2, :cond_2

    .line 94
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewHeight:I

    iget v3, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mAdViewWidth:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    .line 114
    :cond_2
    iget v2, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealWidth:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mRealHeight:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Lcom/mobisage/android/MobiSageAdView;->onMeasure(II)V

    .line 117
    return-void
.end method

.method protected requestADFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 12
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 125
    iget-object v9, p1, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v10, "BannerHTML"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "html":Ljava/lang/String;
    const-string v9, "/*ad_datas_begin*/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 127
    .local v8, "startIndex":I
    const-string v9, "/*ad_datas_end*/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "endIndex":I
    if-lez v8, :cond_0

    if-lez v4, :cond_0

    if-ge v8, v4, :cond_0

    .line 130
    :try_start_0
    const-string v9, "/*ad_datas_begin*/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "data":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 135
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "adwidth"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v9, v10

    const-string v10, "adheight"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    div-float v7, v9, v10

    .line 138
    .local v7, "rate":F
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    .line 139
    .local v0, "adHeight":I
    int-to-float v9, v0

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 141
    .local v1, "adWidth":I
    const-string v9, "adwidth"

    invoke-virtual {v6, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v9, "adheight"

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    const-string v9, "/\\*ad_datas_begin\\*/(.*?)/\\*ad_datas_end\\*/"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/*ad_datas_begin*/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/*ad_datas_end*/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 152
    .end local v0    # "adHeight":I
    .end local v1    # "adWidth":I
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "data":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "rate":F
    :goto_0
    iget-object v9, p1, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v10, "BannerHTML"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->requestADFinish(Lcom/mobisage/android/MobiSageAction;)V

    .line 156
    return-void

    .line 149
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public bridge synthetic runJavascript(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->runJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCustomData(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setCustomData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public setMobiSageAdProductPlacementListener(Lcom/mobisage/android/MobiSageAdProductPlacementListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    .line 246
    return-void
.end method

.method public setWindowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method
