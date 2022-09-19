.class public Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$1;,
        Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;,
        Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;,
        Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    }
.end annotation


# static fields
.field private static PIXEL_FORMAT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WEBRTC"


# instance fields
.field context:Landroid/content/Context;

.field currentDeviceUniqueId:Ljava/lang/String;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x11

    sput v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->PIXEL_FORMAT:I

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "in_id"    # I
    .param p2, "in_context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->id:I

    .line 78
    iput-object p2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 80
    return-void
.end method

.method private AddDeviceInfo(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .param p1, "newDevice"    # Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 170
    .local v6, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 172
    .local v4, "maxFPS":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 173
    .local v0, "frameRate":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v4, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 178
    .end local v0    # "frameRate":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    iput-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .line 179
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 180
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 181
    .local v5, "s":Landroid/hardware/Camera$Size;
    iget-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    new-instance v8, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    invoke-direct {v8}, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;-><init>()V

    aput-object v8, v7, v2

    .line 182
    iget-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    aget-object v7, v7, v2

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    iput v8, v7, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    .line 183
    iget-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    aget-object v7, v7, v2

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iput v8, v7, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    .line 184
    iget-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    aget-object v7, v7, v2

    iput v4, v7, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 185
    const-string v7, "WEBRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoCaptureDeviceInfo maxFPS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v5    # "s":Landroid/hardware/Camera$Size;
    :cond_2
    return-void
.end method

.method private AddDeviceSpecificCapability(Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;)V
    .locals 11
    .param p1, "specificCapability"    # Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .prologue
    .line 227
    iget-object v9, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 228
    .local v2, "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const/4 v3, 0x0

    .line 229
    .local v3, "foundCapability":Z
    iget-object v0, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .local v0, "arr$":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v1, v0, v6

    .line 230
    .local v1, "capability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    iget v9, v1, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    iget v10, p1, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    if-ne v9, v10, :cond_2

    iget v9, v1, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    iget v10, p1, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    if-ne v9, v10, :cond_2

    .line 231
    const/4 v3, 0x1

    .line 235
    .end local v1    # "capability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    :cond_1
    if-nez v3, :cond_0

    .line 236
    iget-object v9, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v8, v9, [Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .line 237
    .local v8, "newCaptureCapabilies":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v9, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    array-length v9, v9

    if-ge v4, v9, :cond_3

    .line 238
    add-int/lit8 v9, v4, 0x1

    iget-object v10, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    aget-object v10, v10, v4

    aput-object v10, v8, v9

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 229
    .end local v4    # "i":I
    .end local v8    # "newCaptureCapabilies":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .restart local v1    # "capability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 240
    .end local v1    # "capability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .restart local v4    # "i":I
    .restart local v8    # "newCaptureCapabilies":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    :cond_3
    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 241
    iput-object v8, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    goto :goto_0

    .line 244
    .end local v0    # "arr$":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .end local v2    # "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v3    # "foundCapability":Z
    .end local v4    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "newCaptureCapabilies":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    :cond_4
    return-void
.end method

.method private AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "classPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, "file":Ljava/io/File;
    const-string v1, "com.htc.hardware.twinCamDevice.FrontFacingCamera"

    .line 374
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 375
    .local v3, "exists":Z
    if-nez v3, :cond_0

    .line 376
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    const-string v8, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v4    # "file":Ljava/io/File;
    const-string v1, "com.sprint.hardware.twinCamDevice.FrontFacingCamera"

    .line 378
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 380
    :cond_0
    if-nez v3, :cond_1

    .line 400
    :goto_0
    return-object v9

    .line 384
    :cond_1
    const-string v2, ""

    .line 385
    .local v2, "dexOutputDir":Ljava/lang/String;
    iget-object v8, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    if-eqz v8, :cond_2

    .line 386
    iget-object v8, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 387
    new-instance v6, Ljava/io/File;

    const-string v8, "dexfiles"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v6, "mFilesDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 389
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    .line 394
    .end local v6    # "mFilesDir":Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/dexfiles"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v5, v8, v2, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 398
    .local v5, "loader":Ldalvik/system/DexClassLoader;
    invoke-virtual {v5, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getFrontFacingCamera"

    move-object v8, v9

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v8, v9

    .line 399
    check-cast v8, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .local v0, "camera":Landroid/hardware/Camera;
    move-object v9, v0

    .line 400
    goto :goto_0
.end method

.method private AllocateGalaxySFrontCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 406
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 407
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 408
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 410
    return-object v0
.end method

.method public static CameraVideoSizeToStr(II)Ljava/lang/String;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/16 v6, 0x1c0

    const/16 v5, 0x300

    const/16 v4, 0x2d0

    const/16 v3, 0xf0

    const/16 v2, 0x1e0

    .line 719
    const/16 v1, 0x80

    if-ne v1, p0, :cond_0

    const/16 v1, 0x60

    if-ne v1, p1, :cond_0

    .line 720
    const-string v0, "SQCIF"

    .line 785
    :goto_0
    return-object v0

    .line 721
    :cond_0
    const/16 v1, 0xa0

    if-ne v1, p0, :cond_1

    const/16 v1, 0x78

    if-ne v1, p1, :cond_1

    .line 722
    const-string v0, "QQVGA"

    .local v0, "size_str":Ljava/lang/String;
    goto :goto_0

    .line 723
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xb0

    if-ne v1, p0, :cond_2

    const/16 v1, 0x90

    if-ne v1, p1, :cond_2

    .line 724
    const-string v0, "QCIF"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 725
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_2
    if-ne v3, p0, :cond_3

    const/16 v1, 0xa0

    if-ne v1, p1, :cond_3

    .line 726
    const-string v0, "W240P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 727
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x140

    if-ne v1, p0, :cond_4

    const/16 v1, 0xc8

    if-ne v1, p1, :cond_4

    .line 728
    const-string v0, "CGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 729
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x140

    if-ne v1, p0, :cond_5

    if-ne v3, p1, :cond_5

    .line 730
    const-string v0, "QVGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 731
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x160

    if-ne v1, p0, :cond_6

    if-ne v3, p1, :cond_6

    .line 732
    const-string v0, "SIF"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 733
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_6
    const/16 v1, 0x190

    if-ne v1, p0, :cond_7

    if-ne v3, p1, :cond_7

    .line 734
    const-string v0, "WQVGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 735
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_7
    const/16 v1, 0x160

    if-ne v1, p0, :cond_8

    const/16 v1, 0x120

    if-ne v1, p1, :cond_8

    .line 736
    const-string v0, "CIF"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 737
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_8
    const/16 v1, 0x200

    if-ne v1, p0, :cond_9

    const/16 v1, 0x120

    if-ne v1, p1, :cond_9

    .line 738
    const-string v0, "W288P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 739
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_9
    const/16 v1, 0x280

    if-ne v1, p0, :cond_a

    const/16 v1, 0x170

    if-ne v1, p1, :cond_a

    .line 740
    const-string v0, "W368P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 741
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x240

    if-ne v1, p0, :cond_b

    if-ne v6, p1, :cond_b

    .line 742
    const-string v0, "S_448P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 743
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_b
    const/16 v1, 0x280

    if-ne v1, p0, :cond_c

    if-ne v2, p1, :cond_c

    .line 744
    const-string v0, "VGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto :goto_0

    .line 745
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_c
    if-ne v4, p0, :cond_d

    const/16 v1, 0x1b0

    if-ne v1, p1, :cond_d

    .line 746
    const-string v0, "S_432P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 747
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_d
    if-ne v5, p0, :cond_e

    const/16 v1, 0x1b0

    if-ne v1, p1, :cond_e

    .line 748
    const-string v0, "W432P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 749
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_e
    const/16 v1, 0x2c0

    if-ne v1, p0, :cond_f

    if-ne v2, p1, :cond_f

    .line 750
    const-string v0, "S_4SIF"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 751
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_f
    if-ne v5, p0, :cond_10

    if-ne v6, p1, :cond_10

    .line 752
    const-string v0, "W448P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 753
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_10
    if-ne v4, p0, :cond_11

    if-ne v2, p1, :cond_11

    .line 754
    const-string v0, "NTSC"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 755
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_11
    const/16 v1, 0x320

    if-ne v1, p0, :cond_12

    if-ne v6, p1, :cond_12

    .line 756
    const-string v0, "FW448P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 757
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_12
    if-ne v5, p0, :cond_13

    if-ne v2, p1, :cond_13

    .line 758
    const-string v0, "S_768x480P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 759
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_13
    const/16 v1, 0x320

    if-ne v1, p0, :cond_14

    if-ne v2, p1, :cond_14

    .line 760
    const-string v0, "WVGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 761
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_14
    const/16 v1, 0x2c0

    if-ne v1, p0, :cond_15

    const/16 v1, 0x240

    if-ne v1, p1, :cond_15

    .line 762
    const-string v0, "S_4CIF"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 763
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_15
    const/16 v1, 0x320

    if-ne v1, p0, :cond_16

    const/16 v1, 0x258

    if-ne v1, p1, :cond_16

    .line 764
    const-string v0, "SVGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 765
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_16
    const/16 v1, 0x3c0

    if-ne v1, p0, :cond_17

    const/16 v1, 0x220

    if-ne v1, p1, :cond_17

    .line 766
    const-string v0, "W544P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 767
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_17
    const/16 v1, 0x400

    if-ne v1, p0, :cond_18

    const/16 v1, 0x240

    if-ne v1, p1, :cond_18

    .line 768
    const-string v0, "W576P"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 769
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_18
    const/16 v1, 0x3c0

    if-ne v1, p0, :cond_19

    if-ne v4, p1, :cond_19

    .line 770
    const-string v0, "HD"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 771
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_19
    const/16 v1, 0x400

    if-ne v1, p0, :cond_1a

    if-ne v5, p1, :cond_1a

    .line 772
    const-string v0, "XGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 773
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_1a
    const/16 v1, 0x500

    if-ne v1, p0, :cond_1b

    if-ne v4, p1, :cond_1b

    .line 774
    const-string v0, "WHD"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 775
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_1b
    const/16 v1, 0x5a0

    if-ne v1, p0, :cond_1c

    const/16 v1, 0x438

    if-ne v1, p1, :cond_1c

    .line 776
    const-string v0, "FULL_HD"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 777
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_1c
    const/16 v1, 0x640

    if-ne v1, p0, :cond_1d

    const/16 v1, 0x4b0

    if-ne v1, p1, :cond_1d

    .line 778
    const-string v0, "UXGA"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 779
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_1d
    const/16 v1, 0x780

    if-ne v1, p0, :cond_1e

    const/16 v1, 0x438

    if-ne v1, p1, :cond_1e

    .line 780
    const-string v0, "WFULL_HD"

    .restart local v0    # "size_str":Ljava/lang/String;
    goto/16 :goto_0

    .line 782
    .end local v0    # "size_str":Ljava/lang/String;
    :cond_1e
    const-string v0, "QCIF"

    goto/16 :goto_0
.end method

.method public static CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
    .locals 5
    .param p0, "in_id"    # I
    .param p1, "in_context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v1, "WEBRTC"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "VideoCaptureDeviceInfoAndroid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 68
    .local v0, "self":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->Init()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    .end local v0    # "self":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "self":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
    :cond_0
    const-string v1, "WEBRTC"

    const-string v2, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static FindSupportSize(Landroid/hardware/Camera$Parameters;Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;)I
    .locals 13
    .param p0, "para"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cs"    # Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    .line 429
    .local v9, "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v8, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 431
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    if-le v11, v10, :cond_2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0x80

    if-lt v10, v11, :cond_2

    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "find":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 434
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->width:I

    if-ne v11, v10, :cond_0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v11, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v10, v10, Landroid/hardware/Camera$Size;->height:I

    if-ne v11, v10, :cond_0

    .line 435
    const/4 v1, 0x1

    .line 433
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 438
    :cond_1
    if-nez v1, :cond_2

    .line 439
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v1    # "find":Z
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :cond_3
    const-string v10, "WEBRTC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FindSupportSize new size len ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v6, 0x270f

    .local v6, "min_w":I
    const/4 v4, 0x0

    .local v4, "min_h":I
    const/4 v5, 0x0

    .line 446
    .local v5, "min_index":I
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 447
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 448
    .local v7, "s":Landroid/hardware/Camera$Size;
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    if-le v6, v10, :cond_4

    .line 449
    iget v6, v7, Landroid/hardware/Camera$Size;->width:I

    .line 450
    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    .line 451
    move v5, v2

    .line 446
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 454
    .end local v7    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    const-string v10, "WEBRTC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FindSupportSize min_w:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " min_h:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput v6, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    .line 457
    iput v4, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "best_index":I
    if-nez v5, :cond_e

    .line 463
    const/16 v10, 0xb0

    if-le v6, v10, :cond_6

    .line 465
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 466
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 468
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 469
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    .line 582
    :goto_3
    const/4 v10, 0x0

    :goto_4
    return v10

    .line 471
    :cond_6
    const/4 v7, 0x0

    .line 472
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 473
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Landroid/hardware/Camera$Size;
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 474
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    move v0, v2

    .line 475
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0xb0

    if-lt v10, v11, :cond_8

    .line 479
    :cond_7
    if-nez v7, :cond_9

    .line 480
    const-string v10, "WEBRTC"

    const-string v11, "FindSupportSize s=null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v10, -0x1

    goto :goto_4

    .line 472
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 483
    :cond_9
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0xb0

    if-ge v10, v11, :cond_a

    .line 485
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 486
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 488
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 489
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto :goto_3

    .line 490
    :cond_a
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0xb0

    if-ne v10, v11, :cond_c

    .line 492
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 493
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 494
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-gt v10, v11, :cond_b

    .line 495
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Landroid/hardware/Camera$Size;
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 497
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 498
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto :goto_3

    .line 501
    :cond_b
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 502
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto :goto_3

    .line 506
    :cond_c
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 507
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    .line 508
    add-int/lit8 v10, v0, -0x1

    if-ltz v10, :cond_d

    .line 509
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Landroid/hardware/Camera$Size;
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 511
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 512
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    goto/16 :goto_3

    .line 515
    :cond_d
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 516
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    goto/16 :goto_3

    .line 520
    .end local v7    # "s":Landroid/hardware/Camera$Size;
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v10, v5, :cond_17

    .line 522
    const/16 v10, 0xb0

    if-le v6, v10, :cond_f

    .line 524
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 525
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 527
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 528
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto/16 :goto_3

    .line 530
    :cond_f
    const/4 v7, 0x0

    .line 531
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    :goto_6
    if-ltz v2, :cond_10

    .line 532
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Landroid/hardware/Camera$Size;
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 533
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    move v0, v2

    .line 534
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0xb0

    if-lt v10, v11, :cond_11

    .line 538
    :cond_10
    if-nez v7, :cond_12

    .line 539
    const/4 v10, -0x1

    goto/16 :goto_4

    .line 531
    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 541
    :cond_12
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0xb0

    if-ge v10, v11, :cond_13

    .line 543
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 544
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 546
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 547
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto/16 :goto_3

    .line 548
    :cond_13
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0xb0

    if-ne v10, v11, :cond_15

    .line 550
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 551
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 552
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-gt v10, v11, :cond_14

    .line 553
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Landroid/hardware/Camera$Size;
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 555
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 556
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto/16 :goto_3

    .line 559
    :cond_14
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 560
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    goto/16 :goto_3

    .line 564
    :cond_15
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 565
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    .line 566
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-gt v10, v11, :cond_16

    .line 567
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "s":Landroid/hardware/Camera$Size;
    check-cast v7, Landroid/hardware/Camera$Size;

    .line 569
    .restart local v7    # "s":Landroid/hardware/Camera$Size;
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 570
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    goto/16 :goto_3

    .line 573
    :cond_16
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 574
    iget v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    goto/16 :goto_3

    .line 579
    .end local v7    # "s":Landroid/hardware/Camera$Size;
    :cond_17
    const-string v10, "WEBRTC"

    const-string v11, "FindSupportSize min_index wrong, should never happen"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static GetCameraSupportVideoSize()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v14, "lst":Ljava/util/ArrayList;
    const-string v25, "WEBRTC"

    const-string v26, "GetCameraSupportVideoSize into... "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v3, 0x0

    .line 591
    .local v3, "camera":Landroid/hardware/Camera;
    :try_start_0
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 592
    const-string v25, "android.hardware.Camera"

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 593
    .local v4, "cameraClazz":Ljava/lang/Class;
    const-string v25, "getNumberOfCameras"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 595
    .local v8, "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 597
    .local v17, "num":Ljava/lang/Integer;
    const-string v25, "open"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 599
    .local v18, "openMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_b

    .line 600
    new-instance v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;

    invoke-direct {v5}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;-><init>()V

    .line 601
    .local v5, "cs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    iput v10, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->index:I

    .line 602
    const/16 v20, 0x0

    .line 603
    .local v20, "ret":I
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/hardware/Camera;

    move-object v3, v0

    .line 605
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 606
    .local v19, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .line 607
    .local v22, "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 608
    .local v9, "hasFind":Ljava/lang/Boolean;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    const/16 v25, 0x1

    :goto_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 610
    .local v11, "isReverse":Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 611
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    .line 612
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/hardware/Camera$Size;

    .line 613
    .local v23, "tmpSize0":Landroid/hardware/Camera$Size;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    sub-int v25, v25, v12

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .line 615
    .local v24, "tmpSizen":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    sub-int v25, v25, v12

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 611
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 608
    .end local v11    # "isReverse":Ljava/lang/Boolean;
    .end local v12    # "j":I
    .end local v23    # "tmpSize0":Landroid/hardware/Camera$Size;
    .end local v24    # "tmpSizen":Landroid/hardware/Camera$Size;
    :cond_0
    const/16 v25, 0x0

    goto :goto_1

    .line 619
    .restart local v11    # "isReverse":Ljava/lang/Boolean;
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_2

    .line 620
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/Camera$Size;

    .line 621
    .local v21, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    const/16 v26, 0x1e0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    const/16 v26, 0x280

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 622
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 623
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 627
    :try_start_1
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 629
    sget v25, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->PIXEL_FORMAT:I

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 631
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v13

    .line 632
    .local v13, "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    const/16 v26, 0x0

    aget v16, v25, v26

    .line 633
    .local v16, "min":I
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    const/16 v26, 0x1

    aget v15, v25, v26

    .line 634
    .local v15, "max":I
    const/16 v25, 0xa

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    const/16 v25, 0xa

    div-int/lit16 v0, v15, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_4

    .line 635
    const/16 v25, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 641
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 642
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 643
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 647
    :try_start_2
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 652
    .end local v13    # "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v15    # "max":I
    .end local v16    # "min":I
    .end local v21    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-nez v25, :cond_3

    .line 653
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 654
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 656
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 657
    const/4 v3, 0x0

    .line 599
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 638
    .restart local v13    # "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    .restart local v15    # "max":I
    .restart local v16    # "min":I
    .restart local v21    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    :try_start_3
    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 644
    .end local v13    # "listfps":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v15    # "max":I
    .end local v16    # "min":I
    :catch_0
    move-exception v6

    .line 619
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 660
    .end local v4    # "cameraClazz":Ljava/lang/Class;
    .end local v5    # "cs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    .end local v8    # "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    .end local v9    # "hasFind":Ljava/lang/Boolean;
    .end local v10    # "i":I
    .end local v11    # "isReverse":Ljava/lang/Boolean;
    .end local v12    # "j":I
    .end local v17    # "num":Ljava/lang/Integer;
    .end local v18    # "openMethod":Ljava/lang/reflect/Method;
    .end local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v20    # "ret":I
    .end local v21    # "size":Landroid/hardware/Camera$Size;
    .end local v22    # "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_6
    :try_start_4
    new-instance v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;

    invoke-direct {v5}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;-><init>()V

    .line 661
    .restart local v5    # "cs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->index:I

    .line 662
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    .line 663
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 664
    .restart local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .line 665
    .restart local v22    # "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 666
    .restart local v9    # "hasFind":Ljava/lang/Boolean;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v26, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_5
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 668
    .restart local v11    # "isReverse":Ljava/lang/Boolean;
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 669
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    if-ge v12, v0, :cond_8

    .line 670
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/hardware/Camera$Size;

    .line 671
    .restart local v23    # "tmpSize0":Landroid/hardware/Camera$Size;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    sub-int v25, v25, v12

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .line 672
    .restart local v24    # "tmpSizen":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    sub-int v25, v25, v12

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 669
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 666
    .end local v11    # "isReverse":Ljava/lang/Boolean;
    .end local v12    # "j":I
    .end local v23    # "tmpSize0":Landroid/hardware/Camera$Size;
    .end local v24    # "tmpSizen":Landroid/hardware/Camera$Size;
    :cond_7
    const/16 v25, 0x0

    goto :goto_5

    .line 676
    .restart local v11    # "isReverse":Ljava/lang/Boolean;
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_9

    .line 677
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/Camera$Size;

    .line 678
    .restart local v21    # "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    const/16 v26, 0x1e0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    const/16 v26, 0x280

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_c

    .line 679
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 680
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 684
    :try_start_5
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 685
    sget v25, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;->PIXEL_FORMAT:I

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 687
    const/16 v25, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 689
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 690
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 691
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 695
    :try_start_6
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 700
    .end local v21    # "size":Landroid/hardware/Camera$Size;
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-nez v25, :cond_a

    .line 701
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 702
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v5, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 704
    :cond_a
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 705
    const/4 v3, 0x0

    .line 714
    .end local v5    # "cs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    .end local v9    # "hasFind":Ljava/lang/Boolean;
    .end local v11    # "isReverse":Ljava/lang/Boolean;
    .end local v12    # "j":I
    .end local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v22    # "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_b
    :goto_8
    return-object v14

    .line 692
    .restart local v5    # "cs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    .restart local v9    # "hasFind":Ljava/lang/Boolean;
    .restart local v11    # "isReverse":Ljava/lang/Boolean;
    .restart local v12    # "j":I
    .restart local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v21    # "size":Landroid/hardware/Camera$Size;
    .restart local v22    # "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_1
    move-exception v6

    .line 676
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 707
    .end local v5    # "cs":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
    .end local v9    # "hasFind":Ljava/lang/Boolean;
    .end local v11    # "isReverse":Ljava/lang/Boolean;
    .end local v12    # "j":I
    .end local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v21    # "size":Landroid/hardware/Camera$Size;
    .end local v22    # "sizes_old":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_2
    move-exception v7

    .line 708
    .local v7, "ex":Ljava/lang/Exception;
    const-string v25, "WEBRTC"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "GetCameraSupportVideoSize fail for exception:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ,ex.toString="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private Init()I
    .locals 24

    .prologue
    .line 84
    const-string v20, "WEBRTC"

    const-string v21, "VideoCaptureDeviceInfoAndroid Init() into... "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "camera":Landroid/hardware/Camera;
    :try_start_0
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 88
    const-string v20, "android.hardware.Camera"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 89
    .local v3, "cameraClazz":Ljava/lang/Class;
    const-string v20, "getNumberOfCameras"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 90
    .local v10, "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 92
    .local v14, "num":Ljava/lang/Integer;
    const-string v20, "open"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 94
    .local v16, "openMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_2

    .line 95
    new-instance v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;)V

    .line 97
    .local v13, "newDevice":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const-string v20, "android.hardware.Camera$CameraInfo"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 98
    .local v4, "cameraInfoClazz":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    .line 99
    .local v15, "obj":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "facing"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 100
    .local v7, "facField":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "orientation"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 101
    .local v18, "orientationField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 102
    .local v8, "faing":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    .line 104
    .local v17, "orientation":I
    new-instance v12, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v12}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 105
    .local v12, "info":Landroid/hardware/Camera$CameraInfo;
    const-string v20, "getCameraInfo"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 106
    .local v9, "getCameraInfoMethod":Ljava/lang/reflect/Method;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v9, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v11, v12}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 109
    iput v11, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 110
    iget v0, v12, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 111
    iget v8, v12, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 112
    if-nez v8, :cond_0

    .line 113
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Camera "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Facing back, Orientation "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 114
    const-string v20, "WEBRTC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Camera "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Facing back, Orientation "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/hardware/Camera;

    move-object v2, v0

    .line 123
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 124
    .local v19, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 125
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 126
    const/4 v2, 0x0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 116
    .end local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Camera "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Facing front, Orientation "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 117
    sget-object v20, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 118
    const-string v20, "WEBRTC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Camera "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Facing front, Orientation "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 157
    .end local v3    # "cameraClazz":Ljava/lang/Class;
    .end local v4    # "cameraInfoClazz":Ljava/lang/Class;
    .end local v7    # "facField":Ljava/lang/reflect/Field;
    .end local v8    # "faing":I
    .end local v9    # "getCameraInfoMethod":Ljava/lang/reflect/Method;
    .end local v10    # "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    .end local v11    # "i":I
    .end local v12    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v13    # "newDevice":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v14    # "num":Ljava/lang/Integer;
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v16    # "openMethod":Ljava/lang/reflect/Method;
    .end local v17    # "orientation":I
    .end local v18    # "orientationField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 158
    .local v6, "ex":Ljava/lang/Exception;
    const-string v20, "WEBRTC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to init VideoCaptureDeviceInfo ex"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "   ,ex.toString="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v20, 0x0

    .line 163
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_2
    return v20

    .line 130
    :cond_1
    const/4 v11, 0x0

    .line 131
    .restart local v11    # "i":I
    const/4 v5, 0x0

    .line 132
    .local v5, "camera_orientation":I
    :try_start_1
    new-instance v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;)V

    .line 136
    .restart local v13    # "newDevice":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iput v11, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 137
    iput v5, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 139
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Camera_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_FB_Orien_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 140
    const-string v20, "WEBRTC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Camera "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Facing back, Orientation "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    .line 152
    .restart local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 153
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 154
    const/4 v2, 0x0

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .end local v5    # "camera_orientation":I
    .end local v13    # "newDevice":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v19    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->VerifyCapabilities()V

    .line 162
    const-string v20, "WEBRTC"

    const-string v21, "VideoCaptureDeviceInfoAndroid Init() out... "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v20, 0x0

    goto/16 :goto_2
.end method

.method private SearchOldFrontFacingCameras(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;
    .locals 11
    .param p1, "newDevice"    # Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 330
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 331
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 332
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v7, "camera-id"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 336
    :try_start_0
    const-string v7, "camera-id"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 338
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 339
    sget-object v7, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 340
    const/4 v7, 0x0

    iput v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 341
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .line 365
    :goto_0
    return-object v7

    .line 343
    :catch_0
    move-exception v3

    .line 345
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "WEBRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Init Failed to open front camera camera - ex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 351
    new-instance v5, Ljava/io/File;

    const-string v7, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 353
    .local v4, "exists":Z
    if-nez v4, :cond_1

    .line 354
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    const-string v7, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 357
    :cond_1
    if-eqz v4, :cond_2

    .line 358
    sget-object v7, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 359
    iput v10, p1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 360
    invoke-direct {p0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v2

    .line 361
    .local v2, "evCamera":Landroid/hardware/Camera;
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 362
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    move-object v7, v6

    .line 363
    goto :goto_0

    .line 365
    .end local v2    # "evCamera":Landroid/hardware/Camera;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private VerifyCapabilities()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    .line 196
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "GT-I9000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "crespo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    :cond_0
    new-instance v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    invoke-direct {v6}, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;-><init>()V

    .line 198
    .local v6, "specificCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    const/16 v7, 0x160

    iput v7, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    .line 199
    const/16 v7, 0x120

    iput v7, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    .line 200
    iput v9, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 201
    invoke-direct {p0, v6}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;)V

    .line 203
    new-instance v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .end local v6    # "specificCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    invoke-direct {v6}, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;-><init>()V

    .line 204
    .restart local v6    # "specificCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    const/16 v7, 0xb0

    iput v7, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    .line 205
    const/16 v7, 0x90

    iput v7, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    .line 206
    iput v9, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 207
    invoke-direct {p0, v6}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;)V

    .line 209
    new-instance v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .end local v6    # "specificCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    invoke-direct {v6}, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;-><init>()V

    .line 210
    .restart local v6    # "specificCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    const/16 v7, 0x140

    iput v7, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    .line 211
    const/16 v7, 0xf0

    iput v7, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    .line 212
    iput v9, v6, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 213
    invoke-direct {p0, v6}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;)V

    .line 217
    .end local v6    # "specificCapability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    :cond_1
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "motorola"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v8, "umts_sholes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    iget-object v7, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 219
    .local v2, "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v0, v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .local v0, "arr$":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 220
    .local v1, "capability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    iput v9, v1, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "arr$":[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .end local v1    # "capability":Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .end local v2    # "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    return-void
.end method


# virtual methods
.method public AllocateCamera(IJLjava/lang/String;)Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;
    .locals 14
    .param p1, "id"    # I
    .param p2, "context"    # J
    .param p4, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v2, "WEBRTC"

    const-string v3, "VideoCaptureDeviceInfoAndroid AllocateCamera() into... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_0
    const-string v2, "WEBRTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllocateCamera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v6, 0x0

    .line 285
    .local v6, "camera":Landroid/hardware/Camera;
    const/4 v7, 0x0

    .line 286
    .local v7, "deviceToUse":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 287
    .local v9, "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v9, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    move-object v7, v9

    .line 290
    sget-object v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$ultrapower$mcs$engine$video$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    iget-object v3, v9, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v3}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 299
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    .line 300
    const-string v2, "android.hardware.Camera"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 301
    .local v8, "cameraClazz":Ljava/lang/Class;
    const-string v2, "open"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v8, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 303
    .local v12, "openMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v9, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v12, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "camera":Landroid/hardware/Camera;
    check-cast v6, Landroid/hardware/Camera;

    .line 304
    .restart local v6    # "camera":Landroid/hardware/Camera;
    goto :goto_0

    .line 292
    .end local v8    # "cameraClazz":Ljava/lang/Class;
    .end local v12    # "openMethod":Ljava/lang/reflect/Method;
    :pswitch_0
    invoke-direct {p0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AllocateGalaxySFrontCamera()Landroid/hardware/Camera;

    move-result-object v6

    .line 293
    goto :goto_0

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v6

    .line 296
    goto :goto_0

    .line 305
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    goto :goto_0

    .line 311
    .end local v9    # "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_2
    if-nez v6, :cond_3

    .line 312
    const-string v2, "WEBRTC"

    const-string v3, "VideoCaptureAndroid::AllocateCamera - create camera fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v2, 0x0

    .line 322
    .end local v6    # "camera":Landroid/hardware/Camera;
    .end local v7    # "deviceToUse":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v11    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v2

    .line 315
    .restart local v6    # "camera":Landroid/hardware/Camera;
    .restart local v7    # "deviceToUse":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v2, "WEBRTC"

    const-string v3, "VideoCaptureAndroid::AllocateCamera - creating success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;

    move v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/ultrapower/mcs/engine/video/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    .end local v6    # "camera":Landroid/hardware/Camera;
    .end local v7    # "deviceToUse":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 319
    .local v10, "ex":Ljava/lang/Exception;
    const-string v2, "WEBRTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllocateCamera Failed to open camera- ex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x0

    goto :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetCapabilityArray(Ljava/lang/String;)[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 260
    .local v0, "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

    .line 264
    .end local v0    # "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public GetDeviceUniqueName(I)Ljava/lang/String;
    .locals 1
    .param p1, "deviceNumber"    # I

    .prologue
    .line 252
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public GetOrientation(Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v2, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 271
    .local v0, "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget v2, v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 275
    .end local v0    # "device":Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public NumberOfDevices()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
