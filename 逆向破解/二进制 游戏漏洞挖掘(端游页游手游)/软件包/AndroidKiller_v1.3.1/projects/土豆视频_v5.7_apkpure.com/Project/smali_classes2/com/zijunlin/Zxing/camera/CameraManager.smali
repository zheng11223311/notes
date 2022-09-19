.class public final Lcom/zijunlin/Zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static MAX_FRAME_WIDTH:I

.field private static MIN_FRAME_WIDTH:I

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/zijunlin/Zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/zijunlin/Zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/app/Activity;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/zijunlin/Zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v2, Lcom/zijunlin/Zxing/camera/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zijunlin/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 44
    const/16 v2, 0x12c

    sput v2, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    .line 46
    const/16 v2, 0x1f4

    sput v2, Lcom/zijunlin/Zxing/camera/CameraManager;->MAX_FRAME_WIDTH:I

    .line 55
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    .local v1, "sdkInt":I
    :goto_0
    sput v1, Lcom/zijunlin/Zxing/camera/CameraManager;->SDK_INT:I

    .line 61
    return-void

    .line 56
    .end local v1    # "sdkInt":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1    # "sdkInt":I
    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x1f4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->context:Landroid/app/Activity;

    .line 107
    new-instance v0, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    .line 119
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 123
    new-instance v0, Lcom/zijunlin/Zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    iget-boolean v2, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/zijunlin/Zxing/camera/PreviewCallback;-><init>(Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;Z)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewCallback:Lcom/zijunlin/Zxing/camera/PreviewCallback;

    .line 125
    new-instance v0, Lcom/zijunlin/Zxing/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/zijunlin/Zxing/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/zijunlin/Zxing/camera/AutoFocusCallback;

    .line 126
    sget v0, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_0

    sget v0, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    const/16 v1, 0x500

    if-gt v0, v1, :cond_0

    sget v0, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    const/16 v1, 0x44c

    if-le v0, v1, :cond_0

    sget v0, Lcom/zijunlin/Zxing/CaptureFragment;->Dp:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_0

    .line 129
    sput v3, Lcom/zijunlin/Zxing/camera/CameraManager;->MAX_FRAME_WIDTH:I

    .line 131
    :cond_0
    sget v0, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    if-le v0, v4, :cond_1

    sget v0, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    if-le v0, v4, :cond_1

    .line 132
    sput v3, Lcom/zijunlin/Zxing/camera/CameraManager;->MAX_FRAME_WIDTH:I

    .line 134
    :cond_1
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/zijunlin/Zxing/camera/CameraManager;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/zijunlin/Zxing/camera/CameraManager;->cameraManager:Lcom/zijunlin/Zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 90
    sget-object v0, Lcom/zijunlin/Zxing/camera/CameraManager;->cameraManager:Lcom/zijunlin/Zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/zijunlin/Zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/zijunlin/Zxing/camera/CameraManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/zijunlin/Zxing/camera/CameraManager;->cameraManager:Lcom/zijunlin/Zxing/camera/CameraManager;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/zijunlin/Zxing/camera/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 427
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 428
    .local v8, "previewFormat":I
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 429
    .local v9, "previewFormatString":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 445
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lcom/zijunlin/Zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/zijunlin/Zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_0
    return-object v0

    .line 438
    :pswitch_0
    new-instance v0, Lcom/zijunlin/Zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/zijunlin/Zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/zijunlin/Zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 176
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 179
    :cond_0
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 257
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 258
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_4

    .line 259
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 260
    const/4 v5, 0x0

    .line 299
    :goto_0
    return-object v5

    .line 262
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v4, v5, 0x7

    .line 263
    .local v4, "width":I
    sget v5, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    if-ge v4, v5, :cond_1

    .line 264
    sget v4, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    .line 269
    :cond_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v0, v5, 0x7

    .line 270
    .local v0, "height":I
    sget v5, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    if-ge v0, v5, :cond_2

    .line 271
    sget v0, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    .line 276
    :cond_2
    if-le v4, v0, :cond_5

    .line 277
    move v4, v0

    .line 281
    :goto_1
    sget v5, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    sget v6, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    mul-int/2addr v5, v6

    const v6, 0x25800

    if-gt v5, v6, :cond_3

    .line 282
    const/16 v0, 0xb4

    .line 283
    const/16 v4, 0xb4

    .line 285
    :cond_3
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 287
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_6

    .line 288
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x5

    .line 295
    .local v3, "topOffset":I
    :goto_2
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 297
    sget-object v5, Lcom/zijunlin/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_4
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 279
    .restart local v0    # "height":I
    .restart local v4    # "width":I
    :cond_5
    move v0, v4

    goto :goto_1

    .line 290
    .restart local v1    # "leftOffset":I
    :cond_6
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x8

    .restart local v3    # "topOffset":I
    goto :goto_2
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 362
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 390
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v4

    .line 365
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 366
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 367
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 368
    .local v3, "screenResolution":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 372
    sget-boolean v4, Lcom/zijunlin/Zxing/CaptureFragment;->IsLandSpace:Z

    if-eqz v4, :cond_3

    .line 373
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 374
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 376
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 377
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 388
    :goto_1
    iput-object v2, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 390
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_2
    iget-object v4, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 380
    .restart local v0    # "cameraResolution":Landroid/graphics/Point;
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_3
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 381
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 383
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 384
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public getpicRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    .line 303
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 304
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 305
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v4, v5, 0x7

    .line 306
    .local v4, "width":I
    sget-object v5, Lcom/zijunlin/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenResolution x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v5, Lcom/zijunlin/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screenResolution y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget v5, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    if-ge v4, v5, :cond_0

    .line 309
    sget v4, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    .line 314
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v0, v5, 0x7

    .line 315
    .local v0, "height":I
    sget v5, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    if-ge v0, v5, :cond_1

    .line 316
    sget v0, Lcom/zijunlin/Zxing/camera/CameraManager;->MIN_FRAME_WIDTH:I

    .line 321
    :cond_1
    if-le v4, v0, :cond_4

    .line 322
    move v4, v0

    .line 326
    :goto_0
    sget v5, Lcom/zijunlin/Zxing/CaptureFragment;->Wt:I

    sget v6, Lcom/zijunlin/Zxing/CaptureFragment;->HT:I

    mul-int/2addr v5, v6

    const v6, 0x25800

    if-gt v5, v6, :cond_2

    .line 327
    const/16 v0, 0xb4

    .line 328
    const/16 v4, 0xb4

    .line 330
    :cond_2
    sget-object v5, Lcom/zijunlin/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 333
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_5

    .line 335
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x5

    .line 346
    .local v3, "topOffset":I
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 349
    sget-object v5, Lcom/zijunlin/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_3
    iget-object v5, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    return-object v5

    .line 324
    .restart local v0    # "height":I
    .restart local v2    # "screenResolution":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_4
    move v0, v4

    goto :goto_0

    .line 337
    .restart local v1    # "leftOffset":I
    :cond_5
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x8

    .restart local v3    # "topOffset":I
    goto :goto_1
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 147
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 148
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 153
    iget-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->initialized:Z

    .line 155
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->configManager:Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/zijunlin/Zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 168
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/zijunlin/Zxing/camera/AutoFocusCallback;

    invoke-virtual {v1, p1, p2}, Lcom/zijunlin/Zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/zijunlin/Zxing/camera/AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera.autoFocus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewCallback:Lcom/zijunlin/Zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/zijunlin/Zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 219
    iget-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewCallback:Lcom/zijunlin/Zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewCallback:Lcom/zijunlin/Zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewing:Z

    .line 189
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 200
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewCallback:Lcom/zijunlin/Zxing/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/zijunlin/Zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 201
    iget-object v0, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/zijunlin/Zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/zijunlin/Zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 202
    iput-boolean v1, p0, Lcom/zijunlin/Zxing/camera/CameraManager;->previewing:Z

    .line 204
    :cond_1
    return-void
.end method
