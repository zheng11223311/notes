.class public Lcom/taobao/hotpatch/res/ResReplacer;
.super Ljava/lang/Object;
.source "ResReplacer.java"


# static fields
.field private static mIsHooked:Z

.field private static mRepResources:Landroid/content/res/Resources;

.field private static mReplacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/hotpatch/res/ResReplacer;->mReplacementMap:Ljava/util/HashMap;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/hotpatch/res/ResReplacer;->mIsHooked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReplaceResources(Landroid/app/Application;Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 10
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "patchPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "reMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v4

    .line 35
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    const-class v6, Landroid/content/res/AssetManager;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 40
    .local v0, "asset":Landroid/content/res/AssetManager;
    const-string v6, "addAssetPath"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v4

    invoke-static {v0, v6, v7}, Lcom/taobao/android/dexposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.content.res.MiuiResources"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v5

    .line 43
    .local v1, "isMiui":Z
    :goto_1
    const/4 v3, 0x0

    .line 44
    .local v3, "miuiResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    .line 45
    const-string v6, "android.content.res.MiuiResources"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 46
    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Landroid/content/res/AssetManager;

    aput-object v7, v6, v4

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v5

    const-class v7, Landroid/content/res/Configuration;

    aput-object v7, v6, v8

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 47
    .local v2, "miuiCons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 48
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    sput-object v4, Lcom/taobao/hotpatch/res/ResReplacer;->mRepResources:Landroid/content/res/Resources;

    .line 52
    .end local v2    # "miuiCons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_2
    sput-object p3, Lcom/taobao/hotpatch/res/ResReplacer;->mReplacementMap:Ljava/util/HashMap;

    .line 53
    sget-boolean v4, Lcom/taobao/hotpatch/res/ResReplacer;->mIsHooked:Z

    if-nez v4, :cond_2

    .line 54
    invoke-static {v1, v3}, Lcom/taobao/hotpatch/res/ResReplacer;->hookResources(ZLjava/lang/Class;)V

    .line 55
    invoke-static {}, Lcom/taobao/hotpatch/res/ResReplacer;->hookTypedArray()V

    .line 56
    sput-boolean v5, Lcom/taobao/hotpatch/res/ResReplacer;->mIsHooked:Z

    :cond_2
    move v4, v5

    .line 58
    goto :goto_0

    .end local v1    # "isMiui":Z
    .end local v3    # "miuiResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move v1, v4

    .line 42
    goto :goto_1

    .line 50
    .restart local v1    # "isMiui":Z
    .restart local v3    # "miuiResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v4, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v4, v0, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v4, Lcom/taobao/hotpatch/res/ResReplacer;->mRepResources:Landroid/content/res/Resources;

    goto :goto_2
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/taobao/hotpatch/res/ResReplacer;->mReplacementMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/taobao/hotpatch/res/ResReplacer;->mRepResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static hookResources(ZLjava/lang/Class;)V
    .locals 7
    .param p0, "isMiui"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "miuiClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "getLayout"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$1;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$1;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 85
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "getDrawable"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$2;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$2;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 102
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "getColor"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$3;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$3;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 119
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "getColorStateList"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$4;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$4;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 136
    if-eqz p0, :cond_0

    move-object v0, p1

    :goto_0
    const-string v1, "getText"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$5;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$5;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 153
    if-eqz p0, :cond_1

    .end local p1    # "miuiClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-string v0, "getText"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v5

    new-instance v2, Lcom/taobao/hotpatch/res/ResReplacer$6;

    invoke-direct {v2}, Lcom/taobao/hotpatch/res/ResReplacer$6;-><init>()V

    aput-object v2, v1, v6

    invoke-static {p1, v0, v1}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 168
    return-void

    .line 136
    .restart local p1    # "miuiClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v0, Landroid/content/res/Resources;

    goto :goto_0

    .line 153
    :cond_1
    const-class p1, Landroid/content/res/Resources;

    goto :goto_1
.end method

.method public static hookTypedArray()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getResourceId"

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$7;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$7;-><init>()V

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 188
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getColor"

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$8;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$8;-><init>()V

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 205
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getColorStateList"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$9;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$9;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 223
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getDrawable"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$10;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$10;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 241
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getString"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$11;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$11;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 259
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getText"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$12;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$12;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 277
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "getTextArray"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/hotpatch/res/ResReplacer$13;

    invoke-direct {v3}, Lcom/taobao/hotpatch/res/ResReplacer$13;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    .line 294
    return-void
.end method

.method public static unreplaceRes()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/taobao/hotpatch/res/ResReplacer;->mReplacementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    return-void
.end method
