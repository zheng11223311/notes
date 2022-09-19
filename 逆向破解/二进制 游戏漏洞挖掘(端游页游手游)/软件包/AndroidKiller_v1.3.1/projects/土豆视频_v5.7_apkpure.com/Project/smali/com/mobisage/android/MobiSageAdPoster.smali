.class public final Lcom/mobisage/android/MobiSageAdPoster;
.super Lcom/mobisage/android/MobiSageAdView;
.source "MobiSageAdPoster.java"


# static fields
.field private static final ACTION_TYPE:I = 0xf

.field private static final CONTENT_TYPE:J = 0x166L


# instance fields
.field private mAdSize:Lcom/mobisage/android/MobiSageAdSize$Poster;

.field mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

.field mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Poster;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Poster;

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/mobisage/android/MobiSageAdPoster;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Poster;II)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdSize$Poster;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/mobisage/android/MobiSageAdSize$Poster;
    .param p3, "affiliateId"    # I
    .param p4, "affiliateSourceType"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p3, p4}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;II)V

    .line 47
    iput-object p2, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Poster;

    .line 49
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdPoster;->initMobiSageAdView(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic destoryAdView()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->destoryAdView()V

    return-void
.end method

.method public bridge synthetic getCustomData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->getCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->getKeyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRealHeight()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPoster;->getHeight()I

    move-result v0

    return v0
.end method

.method getRealWidth()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPoster;->getWidth()I

    move-result v0

    return v0
.end method

.method protected initMobiSageAdView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mDisplayType:I

    .line 92
    const-wide/16 v0, 0x166

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mContentType:J

    .line 93
    const/16 v0, 0xf

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mActionType:I

    .line 95
    new-instance v0, Lcom/mobisage/android/MobiSageAdPoster$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageAdPoster$1;-><init>(Lcom/mobisage/android/MobiSageAdPoster;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 144
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-super {p0, v0}, Lcom/mobisage/android/MobiSageAdView;->setMobiSageAdViewListener(Lcom/mobisage/android/IMobiSageAdViewListener;)V

    .line 146
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Poster;

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Poster;->Size_300X250:Lcom/mobisage/android/MobiSageAdSize$Poster;

    if-ne v0, v1, :cond_1

    .line 147
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdWidth:I

    .line 148
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdHeight:I

    .line 153
    :cond_0
    :goto_0
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mRealWidth:I

    .line 154
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mRealHeight:I

    .line 156
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->initMobiSageAdView(Landroid/content/Context;)V

    .line 158
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->sendADRequest()V

    .line 159
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdSize:Lcom/mobisage/android/MobiSageAdSize$Poster;

    sget-object v1, Lcom/mobisage/android/MobiSageAdSize$Poster;->Size_320X480:Lcom/mobisage/android/MobiSageAdSize$Poster;

    if-ne v0, v1, :cond_0

    .line 150
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v1, 0x43a00000    # 320.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdWidth:I

    .line 151
    sget v0, Lcom/mobisage/android/MobiSageDeviceInfo;->density:F

    const/high16 v1, 0x43f00000    # 480.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdPoster;->mAdHeight:I

    goto :goto_0
.end method

.method onDestroy()V
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;

    .line 71
    .local v0, "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 76
    .end local v0    # "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    :cond_0
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->onDestroy()V

    .line 77
    return-void
.end method

.method public bridge synthetic runJavascript(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->runJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCustomData(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setCustomData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public setMobiSageAdPosterListener(Lcom/mobisage/android/MobiSageAdPosterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobisage/android/MobiSageAdPosterListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    .line 202
    return-void
.end method

.method public bridge synthetic setWindowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setWindowColor(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdPoster;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdPoster;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 170
    .local v0, "isFullScreen":Z
    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x1030011

    .line 172
    .local v1, "theme":I
    :goto_1
    new-instance v2, Lcom/mobisage/android/MobiSageAdPosterDialog;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdPoster;->context:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/mobisage/android/MobiSageAdPosterDialog;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdPosterDialog;->show()V

    .line 174
    .end local v0    # "isFullScreen":Z
    .end local v1    # "theme":I
    :cond_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    .restart local v0    # "isFullScreen":Z
    :cond_2
    const v1, 0x1030010

    goto :goto_1
.end method

.method public show(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    sget-object v2, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 186
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 188
    .local v0, "isFullScreen":Z
    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x1030011

    .line 190
    .local v1, "theme":I
    :goto_1
    new-instance v2, Lcom/mobisage/android/MobiSageAdPosterDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, p1, v3, v1}, Lcom/mobisage/android/MobiSageAdPosterDialog;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdPosterDialog;->show()V

    .line 192
    .end local v0    # "isFullScreen":Z
    .end local v1    # "theme":I
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    .restart local v0    # "isFullScreen":Z
    :cond_2
    const v1, 0x1030010

    goto :goto_1
.end method
