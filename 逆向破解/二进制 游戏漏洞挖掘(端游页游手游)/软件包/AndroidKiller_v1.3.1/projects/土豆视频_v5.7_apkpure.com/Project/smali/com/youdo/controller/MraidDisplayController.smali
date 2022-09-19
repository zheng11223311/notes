.class public Lcom/youdo/controller/MraidDisplayController;
.super Lcom/youdo/controller/MraidController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MraidDisplayController"


# instance fields
.field private bMaxSizeSet:Z

.field private mBroadCastReceiver:Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

.field private mDensity:F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private final mOriginalRequestedOrientation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/youdo/controller/MraidController;-><init>(Lcom/youdo/view/MraidView;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/controller/MraidDisplayController;->bMaxSizeSet:Z

    iput v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxWidth:I

    iput v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxHeight:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/youdo/controller/MraidDisplayController;->mOriginalRequestedOrientation:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getDeviceDimensions(Lcom/youdo/controller/MraidController$Dimensions;)Lcom/youdo/controller/MraidController$Dimensions;
    .locals 3

    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    :cond_0
    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->getLocationInWindow([I)V

    iget v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    :cond_2
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v0, v1, v0

    iput v0, p1, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    return-object p1
.end method

.method private setOrientationLockEnabled(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidDisplayController"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    check-cast v0, Lcom/youdo/AdApplicationContext;

    iget-object v0, v0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-interface {v0}, Lcom/youdo/renderers/IAdRenderer;->close()V

    return-void
.end method

.method public dimensions()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ \"top\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"left\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"bottom\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"right\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/youdo/controller/MraidController$Dimensions;

    invoke-static {v0, v1}, Lcom/youdo/controller/MraidDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/MraidController$Dimensions;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/youdo/controller/MraidController$ExpandProperties;

    invoke-static {v1, v2}, Lcom/youdo/controller/MraidDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youdo/controller/MraidController$ExpandProperties;

    iget-object v2, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-direct {p0, v0}, Lcom/youdo/controller/MraidDisplayController;->getDeviceDimensions(Lcom/youdo/controller/MraidController$Dimensions;)Lcom/youdo/controller/MraidController$Dimensions;

    move-result-object v0

    invoke-virtual {v2, v0, p2, v1}, Lcom/youdo/view/MraidView;->expand(Lcom/youdo/controller/MraidController$Dimensions;Ljava/lang/String;Lcom/youdo/controller/MraidController$ExpandProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p0, p4}, Lcom/youdo/controller/MraidDisplayController;->useCustomClose(Z)V

    invoke-direct {p0, p5}, Lcom/youdo/controller/MraidDisplayController;->setOrientationLockEnabled(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/youdo/controller/MraidDisplayController;->expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/openad/common/util/OSUtils;->getDefaultDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youdo/controller/MraidDisplayController;->bMaxSizeSet:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxHeight:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/youdo/controller/MraidDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/OSCompatibility;->getRotation(Landroid/view/Display;)I

    move-result v1

    const/4 v0, -0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "MraidDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    rsub-int v0, v0, 0x168

    :cond_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getScreenDimension()Lcom/youdo/controller/MraidController$Dimensions;
    .locals 4

    new-instance v0, Lcom/youdo/controller/MraidController$Dimensions;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$Dimensions;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/youdo/controller/MraidDisplayController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/youdo/controller/MraidDisplayController;->getScreenDimension()Lcom/youdo/controller/MraidController$Dimensions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidDisplayController"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    check-cast v0, Lcom/youdo/AdApplicationContext;

    iget-object v0, v0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->AD:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-interface {v0, v1}, Lcom/youdo/renderers/IAdRenderer;->hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logHTML(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MraidDisplayController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ screenSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youdo/controller/MraidDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window.mraidview.fireChangeEvent({ orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "::"

    const-string v1, "?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/youdo/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youdo/view/MraidView;->setEmebeddedBrowserOpen(Z)V

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/youdo/view/MraidView;->open(Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/view/MraidView;->openMap(Ljava/lang/String;Z)V

    return-void
.end method

.method public pauseVideoAd()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PAUSED:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setVideoState(Lorg/openad/constants/IOpenAdContants$VideoState;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string/jumbo v2, "video_pause"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "Invalid url"

    const-string v2, "playAudio"

    invoke-virtual {v0, v1, v2}, Lcom/youdo/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/youdo/view/MraidView;->playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    aget v0, p6, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/youdo/controller/MraidController$Dimensions;

    invoke-direct {v0}, Lcom/youdo/controller/MraidController$Dimensions;-><init>()V

    const/4 v1, 0x0

    aget v1, p6, v1

    iput v1, v0, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    const/4 v1, 0x1

    aget v1, p6, v1

    iput v1, v0, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    const/4 v1, 0x2

    aget v1, p6, v1

    iput v1, v0, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    const/4 v1, 0x3

    aget v1, p6, v1

    iput v1, v0, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    invoke-direct {p0, v0}, Lcom/youdo/controller/MraidDisplayController;->getDeviceDimensions(Lcom/youdo/controller/MraidController$Dimensions;)Lcom/youdo/controller/MraidController$Dimensions;

    move-result-object v6

    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "Invalid url"

    const-string v2, "playVideo"

    invoke-virtual {v0, v1, v2}, Lcom/youdo/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/youdo/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/youdo/controller/MraidController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxHeight:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxWidth:I

    if-le p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    const-string v1, "Maximum size exceeded"

    const-string/jumbo v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/youdo/view/MraidView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    check-cast v0, Lcom/youdo/AdApplicationContext;

    iget-object v0, v0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->getWebView()Lcom/youdo/view/MraidView;

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    check-cast v0, Lcom/youdo/AdApplicationContext;

    iget-object v0, v0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget v1, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/youdo/controller/MraidDisplayController;->mDensity:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/youdo/renderers/IAdRenderer;->resize(II)V

    goto :goto_0
.end method

.method public resize(IIIILjava/lang/String;Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/youdo/controller/MraidDisplayController;->resize(II)V

    return-void
.end method

.method public resumeVideoAd()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setVideoState(Lorg/openad/constants/IOpenAdContants$VideoState;)V

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string/jumbo v2, "video_resume"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public setMaxSize(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/controller/MraidDisplayController;->bMaxSizeSet:Z

    iput p1, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxWidth:I

    iput p2, p0, Lcom/youdo/controller/MraidDisplayController;->mMaxHeight:I

    return-void
.end method

.method public show()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "MraidDisplayController"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    check-cast v0, Lcom/youdo/AdApplicationContext;

    iget-object v0, v0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->AD:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-interface {v0, v1}, Lcom/youdo/renderers/IAdRenderer;->show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    return-void
.end method

.method public startConfigurationListener()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;-><init>(Lcom/youdo/controller/MraidDisplayController;)V

    iput-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MraidDisplayController"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/controller/MraidDisplayController;->stopConfigurationListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

    return-void
.end method

.method public stopConfigurationListener()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youdo/controller/MraidDisplayController;->mBroadCastReceiver:Lcom/youdo/controller/util/MraidConfigurationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public useCustomClose(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/youdo/controller/MraidDisplayController;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    check-cast v0, Lcom/youdo/AdApplicationContext;

    iget-object v0, v0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->hideCloseButton(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/openad/common/util/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
