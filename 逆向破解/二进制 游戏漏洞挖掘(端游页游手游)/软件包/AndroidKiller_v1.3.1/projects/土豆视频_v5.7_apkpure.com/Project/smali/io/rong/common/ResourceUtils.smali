.class public final Lio/rong/common/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field public static final anim:Ljava/lang/String; = "anim"

.field public static final animator:Ljava/lang/String; = "animator"

.field public static final array:Ljava/lang/String; = "array"

.field public static final attr:Ljava/lang/String; = "attr"

.field public static final bool:Ljava/lang/String; = "bool"

.field public static final color:Ljava/lang/String; = "color"

.field public static final dimen:Ljava/lang/String; = "dimen"

.field public static final drawable:Ljava/lang/String; = "drawable"

.field public static final id:Ljava/lang/String; = "id"

.field public static final interpolator:Ljava/lang/String; = "interpolator"

.field public static final layout:Ljava/lang/String; = "layout"

.field public static final menu:Ljava/lang/String; = "menu"

.field public static final mipmap:Ljava/lang/String; = "mipmap"

.field public static packageName:Ljava/lang/String; = null

.field public static final raw:Ljava/lang/String; = "raw"

.field public static resources:Landroid/content/res/Resources; = null

.field public static final string:Ljava/lang/String; = "string"

.field public static final stringArray:Ljava/lang/String; = "string-array"

.field public static final style:Ljava/lang/String; = "style"

.field public static final styleable:Ljava/lang/String; = "styleable"

.field public static final xml:Ljava/lang/String; = "xml"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getResAnimID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "anim"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResAnimatorID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "animator"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResArrayID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "array"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResAttrID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "attr"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResBoolID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "bool"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResColorID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "color"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResDimenID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "dimen"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResDrawableID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResIdID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "id"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResInterpolatorID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "interpolator"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResLayoutID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "layout"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResMenuID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "menu"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResMipmapID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "mipmap"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResRawID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "raw"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResStringArrayID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string/jumbo v1, "string-array"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResStringID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string/jumbo v1, "string"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResStyleID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string/jumbo v1, "style"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResStyleableID(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string/jumbo v1, "styleable"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResXmlID(Ljava/lang/String;)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    const-string/jumbo v1, "xml"

    sget-object v2, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/common/ResourceUtils;->packageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lio/rong/common/ResourceUtils;->resources:Landroid/content/res/Resources;

    .line 39
    return-void
.end method
