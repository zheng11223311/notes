.class public Lcom/ultrapower/mcs/engine/video/ViERenderer;
.super Ljava/lang/Object;
.source "ViERenderer.java"


# static fields
.field private static g_localRenderer:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "localRender":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    sput-object v1, Lcom/ultrapower/mcs/engine/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 45
    sget-object v1, Lcom/ultrapower/mcs/engine/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 47
    return-object v0
.end method

.method public static CreateRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ultrapower/mcs/engine/video/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public static CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useOpenGLES2"    # Z

    .prologue
    .line 23
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;->IsSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;

    invoke-direct {v0, p0}, Lcom/ultrapower/mcs/engine/video/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static GetLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/ultrapower/mcs/engine/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static clearLocalRender()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/ultrapower/mcs/engine/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 57
    return-void
.end method
