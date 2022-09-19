.class Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$1;,
        Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ConfigChooser;,
        Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeObject:J

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "WEBRTC-JR"

    sput-object v0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 28
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 30
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    .line 34
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewWidth:I

    .line 35
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewHeight:I

    .line 43
    invoke-direct {p0, v2, v2, v2}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->init(ZII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "depth"    # I
    .param p4, "stencil"    # I

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 28
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 30
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    .line 34
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewWidth:I

    .line 35
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewHeight:I

    .line 49
    invoke-direct {p0, p2, p3, p4}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->init(ZII)V

    .line 50
    return-void
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 229
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 230
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 232
    const/4 v2, 0x1

    .line 234
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "renderWindow"    # Ljava/lang/Object;

    .prologue
    .line 38
    const-class v0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 2
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 98
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 101
    return-void
.end method

.method private init(ZII)V
    .locals 8
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 64
    :cond_0
    new-instance v0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ContextFactory;-><init>(Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 70
    if-eqz p1, :cond_1

    new-instance v0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 74
    invoke-virtual {p0, v7}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->setRenderMode(I)V

    .line 75
    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ConfigChooser;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 283
    iput-boolean v1, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 284
    iput-boolean v1, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    .line 286
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    return-void
.end method

.method public ReDraw()V
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->requestRender()V

    .line 294
    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .param p1, "nativeObject"    # J

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    iput-wide p1, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 278
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 240
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez v0, :cond_2

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->openGLCreated:Z

    if-nez v0, :cond_3

    .line 246
    iget-wide v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    iget v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewWidth:I

    iget v3, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 251
    :cond_3
    iget-wide v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->DrawNative(J)V

    .line 252
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 257
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 258
    iput p2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewWidth:I

    .line 259
    iput p3, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->viewHeight:I

    .line 261
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 262
    iget-boolean v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    .line 263
    iget-wide v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iput-boolean v2, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 272
    return-void
.end method
