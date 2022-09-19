.class Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;


# static fields
.field public static final BEST_CAMERA_SIZE_HEIGHT:I = 0xf0

.field public static final BEST_CAMERA_SIZE_WIDTH:I = 0x140

.field public static final FX_MAX_FRAME_RATE_SUPPORT:I = 0xa

.field public static PIXEL_FORMAT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WEBRTC-JC"


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private final captureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private context:J

.field private currentDevice:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private expectedFrameSize:I

.field private id:I

.field private isCaptureRunning:Z

.field private isCaptureStarted:Z

.field private isSurfaceReady:Z

.field private localPreview:Landroid/view/SurfaceHolder;

.field private mCaptureFPS:I

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private final numCaptureBuffers:I

.field private final orientation:I

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;

.field public previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private rotatedData:[B

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x11

    sput v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->PIXEL_FORMAT:I

    return-void
.end method

.method public constructor <init>(IJLandroid/hardware/Camera;Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 6
    .param p1, "in_id"    # I
    .param p2, "in_context"    # J
    .param p4, "in_camera"    # Landroid/hardware/Camera;
    .param p5, "in_device"    # Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v4, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->currentDevice:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 41
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 42
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 43
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 44
    iput-object v4, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 47
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->expectedFrameSize:I

    .line 48
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->orientation:I

    .line 49
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->id:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->context:J

    .line 52
    iput-object v4, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 54
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->ownsBuffers:Z

    .line 56
    iput v3, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureWidth:I

    .line 57
    iput v3, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureHeight:I

    .line 58
    iput v3, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureFPS:I

    .line 77
    iput p1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->id:I

    .line 78
    iput-wide p2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->context:J

    .line 79
    iput-object p4, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 80
    iput-object p5, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->currentDevice:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 81
    return-void
.end method

.method public static DeleteVideoCaptureAndroid(Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;)V
    .locals 3
    .param p0, "captureAndroid"    # Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->StopCapture()I

    .line 70
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 71
    iput-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->context:J

    .line 73
    iput-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 74
    return-void
.end method

.method private RouteData([BI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "total"    # I

    .prologue
    .line 251
    mul-int/lit8 v8, p2, 0x2

    div-int/lit8 v3, v8, 0x3

    .line 252
    .local v3, "len":I
    div-int/lit8 v0, v3, 0x2

    .line 254
    .local v0, "half_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 255
    aget-byte v4, p1, v2

    .line 256
    .local v4, "tmp":B
    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v2

    aget-byte v8, p1, v8

    aput-byte v8, p1, v2

    .line 257
    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v2

    aput-byte v4, p1, v8

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v4    # "tmp":B
    :cond_0
    sub-int v7, p2, v3

    .line 261
    .local v7, "uv_len":I
    div-int/lit8 v1, v7, 0x4

    .line 262
    .local v1, "half_uv_len":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 263
    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v3

    aget-byte v5, p1, v8

    .line 264
    .local v5, "tmp_u":B
    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    aget-byte v6, p1, v8

    .line 265
    .local v6, "tmp_v":B
    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v3

    add-int/lit8 v9, p2, -0x1

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 266
    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, p2, -0x1

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 267
    add-int/lit8 v8, p2, -0x1

    mul-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    aput-byte v5, p1, v8

    .line 268
    add-int/lit8 v8, p2, -0x1

    mul-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    aput-byte v6, p1, v8

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    .end local v5    # "tmp_u":B
    .end local v6    # "tmp_v":B
    :cond_1
    return-void
.end method

.method private saveJPEG([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 233
    const/4 v8, 0x0

    .line 235
    .local v8, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget v3, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureWidth:I

    iget v4, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureHeight:I

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 236
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureWidth:I

    iget v5, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureHeight:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 239
    new-instance v9, Ljava/io/FileOutputStream;

    const-string v1, "/sdcard/capture_%d.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    .end local v8    # "outStream":Ljava/io/FileOutputStream;
    .local v9, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 241
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 248
    .end local v0    # "yuvimage":Landroid/graphics/YuvImage;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "outStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v7

    .line 244
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 246
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "yuvimage":Landroid/graphics/YuvImage;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v8, v9

    .end local v9    # "outStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 243
    .end local v8    # "outStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9    # "outStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private tryStartCapture(III)I
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 85
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v10, :cond_0

    .line 86
    const/4 v10, -0x1

    .line 184
    :goto_0
    return v10

    .line 89
    :cond_0
    iget-boolean v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureRunning:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isSurfaceReady:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureStarted:Z

    if-nez v10, :cond_2

    .line 90
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 94
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v11, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 96
    new-instance v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    invoke-direct {v2}, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;-><init>()V

    .line 97
    .local v2, "currentCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    iput p1, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    .line 98
    iput p2, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    .line 99
    const/16 v10, 0xa

    if-le p3, v10, :cond_3

    .line 100
    const/16 v10, 0xa

    iput v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 105
    :goto_1
    sget v10, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v11, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v10, v11}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 107
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 108
    .local v9, "parameters":Landroid/hardware/Camera$Parameters;
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    iget v11, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    invoke-virtual {v9, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 110
    sget v10, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 112
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    .line 113
    .local v6, "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x0

    aget v8, v10, v11

    .line 114
    .local v8, "min":I
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x1

    aget v7, v10, v11

    .line 115
    .local v7, "max":I
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    div-int/lit16 v11, v8, 0x3e8

    if-lt v10, v11, :cond_4

    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    div-int/lit16 v11, v7, 0x3e8

    if-gt v10, v11, :cond_4

    .line 117
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, v9}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :goto_3
    mul-int v10, p1, p2

    :try_start_2
    iget-object v11, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v11, v11, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v10, v11

    div-int/lit8 v0, v10, 0x8

    .line 162
    .local v0, "bufSize":I
    const/4 v1, 0x0

    .line 163
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    const/4 v10, 0x3

    if-ge v5, v10, :cond_8

    .line 164
    new-array v1, v0, [B

    .line 165
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 168
    new-array v10, v0, [B

    iput-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->rotatedData:[B

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 102
    .end local v0    # "bufSize":I
    .end local v1    # "buffer":[B
    .end local v5    # "i":I
    .end local v6    # "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v7    # "max":I
    .end local v8    # "min":I
    .end local v9    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_3
    iput p3, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    goto :goto_1

    .line 178
    .end local v2    # "currentCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    :catch_0
    move-exception v4

    .line 179
    .local v4, "ex":Ljava/lang/Exception;
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 120
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v2    # "currentCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .restart local v6    # "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v7    # "max":I
    .restart local v8    # "min":I
    .restart local v9    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_4
    div-int/lit16 v10, v8, 0x3e8

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_2

    .line 141
    :catch_1
    move-exception v4

    .line 142
    .restart local v4    # "ex":Ljava/lang/Exception;
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    if-lt v10, p3, :cond_5

    .line 143
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 146
    :cond_5
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_6

    .line 147
    const/16 v10, 0xf

    iput v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 153
    :goto_5
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    :try_start_3
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, v9}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 156
    :catch_2
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/Exception;
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 148
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    iget v10, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_7

    .line 149
    iput p3, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    goto :goto_5

    .line 151
    :cond_7
    iput p3, v2, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    goto :goto_5

    .line 170
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bufSize":I
    .restart local v1    # "buffer":[B
    .restart local v5    # "i":I
    :cond_8
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 171
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->ownsBuffers:Z

    .line 172
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->AddObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V

    .line 173
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->startPreview()V

    .line 174
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 175
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->expectedFrameSize:I

    .line 176
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 177
    iget-object v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 182
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 184
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public OnOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->SetPreviewRotation(I)V

    .line 355
    return-void
.end method

.method native ProvideCameraFrame([BIJ)V
.end method

.method public SetPreviewRotation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 305
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 306
    const/16 v0, 0x5a

    .line 307
    .local v0, "resultRotation":I
    add-int/lit8 v1, p1, -0x5a

    add-int/lit16 v1, v1, 0x168

    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->currentDevice:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget v2, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    add-int/lit8 v2, v2, -0x5a

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 308
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->currentDevice:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget v1, v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    if-nez v1, :cond_0

    .line 310
    if-nez p1, :cond_2

    .line 311
    const/16 v0, 0x5a

    .line 323
    :cond_0
    :goto_0
    const-string/jumbo v1, "rotation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rocation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "set local rotaion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 327
    .end local v0    # "resultRotation":I
    :cond_1
    return-void

    .line 313
    .restart local v0    # "resultRotation":I
    :cond_2
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_3

    .line 314
    const/16 v0, 0xb4

    goto :goto_0

    .line 316
    :cond_3
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_4

    .line 317
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_4
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public StartCapture(III)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 190
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 191
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 198
    iput p1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureWidth:I

    .line 199
    iput p2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureHeight:I

    .line 200
    iput p3, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureFPS:I

    .line 202
    iget v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureWidth:I

    iget v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureHeight:I

    iget v3, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v1, v2, v3}, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->tryStartCapture(III)I

    move-result v0

    .line 204
    .local v0, "res":I
    iget-object v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    return v0
.end method

.method public StopCapture()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 212
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 213
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 215
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 216
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->RemoveObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V

    .line 217
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->AddObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    iput-boolean v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 227
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->RemoveObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V

    .line 222
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 280
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v0, :cond_0

    .line 283
    array-length v0, p1

    iget v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v0, v1, :cond_0

    .line 291
    iget v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V

    .line 292
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 299
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 334
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 336
    iget v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureHeight:I

    iget v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->tryStartCapture(III)I

    .line 337
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 339
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 344
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 349
    return-void
.end method
