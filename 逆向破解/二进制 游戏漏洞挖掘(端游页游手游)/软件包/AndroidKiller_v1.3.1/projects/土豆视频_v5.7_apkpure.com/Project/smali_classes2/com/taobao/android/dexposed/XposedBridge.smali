.class public final Lcom/taobao/android/dexposed/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dexposed/XposedBridge$1;,
        Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;,
        Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "Hotpatch"

.field private static allGroupUnhookMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;",
            ">;>;"
        }
    .end annotation
.end field

.field private static disableHooks:Z

.field private static hookedGroupCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation
.end field

.field private static final hookedMethodCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Member;",
            "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mGroup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-boolean v1, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->mGroup:Ljava/lang/String;

    .line 32
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 33
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->hookedGroupCallbacks:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypesAndCallback"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v3, p2

    if-eqz v3, :cond_0

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p2, v3

    instance-of v3, v3, Lcom/taobao/android/dexposed/XC_MethodHook;

    if-nez v3, :cond_1

    .line 156
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no callback defined"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, p2, v3

    check-cast v0, Lcom/taobao/android/dexposed/XC_MethodHook;

    .line 159
    .local v0, "callback":Lcom/taobao/android/dexposed/XC_MethodHook;
    invoke-static {p0, p1, p2}, Lcom/taobao/android/dexposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v2

    .line 161
    .local v2, "unhook":Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;
    instance-of v3, v0, Lcom/taobao/android/dexposed/XC_MethodKeepHook;

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/taobao/android/dexposed/XC_MethodKeepReplacement;

    if-nez v3, :cond_2

    .line 163
    sget-object v4, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 164
    :try_start_0
    sget-object v3, Lcom/taobao/android/dexposed/XposedBridge;->hookedGroupCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v3, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    sget-object v5, Lcom/taobao/android/dexposed/XposedBridge;->mGroup:Ljava/lang/String;

    sget-object v6, Lcom/taobao/android/dexposed/XposedBridge;->hookedGroupCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v4

    .line 168
    :cond_2
    return-object v2

    .line 166
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static handleHookedMethod(Ljava/lang/reflect/Member;ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .param p1, "originalMethodId"    # I
    .param p2, "additionalInfoObj"    # Ljava/lang/Object;
    .param p3, "thisObject"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v7, p2

    check-cast v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;

    .line 213
    .local v7, "additionalInfo":Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;
    sget-boolean v1, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    iget-object v3, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v4, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v12

    .line 218
    .local v12, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 222
    .end local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    iget-object v1, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->callbacks:Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v11

    .line 223
    .local v11, "callbacksSnapshot":[Ljava/lang/Object;
    array-length v10, v11

    .line 224
    .local v10, "callbacksLength":I
    if-nez v10, :cond_1

    .line 226
    :try_start_1
    iget-object v3, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v4, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 228
    :catch_1
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 233
    .end local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    new-instance v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v15}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 234
    .local v15, "param":Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
    move-object/from16 v0, p0

    iput-object v0, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 235
    move-object/from16 v0, p3

    iput-object v0, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 236
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 239
    const/4 v9, 0x0

    .line 242
    .local v9, "beforeIdx":I
    :cond_2
    :try_start_2
    aget-object v1, v11, v9

    check-cast v1, Lcom/taobao/android/dexposed/XC_MethodHook;

    invoke-virtual {v1, v15}, Lcom/taobao/android/dexposed/XC_MethodHook;->beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    iget-boolean v1, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v1, :cond_5

    .line 255
    add-int/lit8 v9, v9, 0x1

    .line 261
    :goto_1
    iget-boolean v1, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v1, :cond_3

    .line 263
    :try_start_3
    iget-object v3, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v4, v7, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    iget-object v5, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v6, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    :cond_3
    :goto_2
    add-int/lit8 v8, v9, -0x1

    .line 273
    .local v8, "afterIdx":I
    :cond_4
    invoke-virtual {v15}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v13

    .line 274
    .local v13, "lastResult":Ljava/lang/Object;
    invoke-virtual {v15}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v14

    .line 277
    .local v14, "lastThrowable":Ljava/lang/Throwable;
    :try_start_4
    aget-object v1, v11, v8

    check-cast v1, Lcom/taobao/android/dexposed/XC_MethodHook;

    invoke-virtual {v1, v15}, Lcom/taobao/android/dexposed/XC_MethodHook;->afterHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 288
    :goto_3
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_4

    .line 291
    invoke-virtual {v15}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    invoke-virtual {v15}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 244
    .end local v8    # "afterIdx":I
    .end local v13    # "lastResult":Ljava/lang/Object;
    .end local v14    # "lastThrowable":Ljava/lang/Throwable;
    :catch_2
    move-exception v16

    .line 245
    .local v16, "t":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 258
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v10, :cond_2

    goto :goto_1

    .line 265
    :catch_3
    move-exception v12

    .line 266
    .restart local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 279
    .end local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v8    # "afterIdx":I
    .restart local v13    # "lastResult":Ljava/lang/Object;
    .restart local v14    # "lastThrowable":Ljava/lang/Throwable;
    :catch_4
    move-exception v16

    .line 280
    .restart local v16    # "t":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 283
    if-nez v14, :cond_6

    .line 284
    invoke-virtual {v15, v13}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 286
    :cond_6
    invoke-virtual {v15, v14}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 294
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v15}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lcom/taobao/android/dexposed/XC_MethodHook;)Ljava/util/Set;
    .locals 6
    .param p1, "callback"    # Lcom/taobao/android/dexposed/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/taobao/android/dexposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v4, "unhooks":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 202
    .local v1, "constructor":Ljava/lang/reflect/Member;
    invoke-static {v1, p1}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "constructor":Ljava/lang/reflect/Member;
    :cond_0
    return-object v4
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lcom/taobao/android/dexposed/XC_MethodHook;)Ljava/util/Set;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/android/dexposed/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dexposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v4, "unhooks":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 149
    .local v3, "method":Ljava/lang/reflect/Member;
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-static {v3, p2}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "method":Ljava/lang/reflect/Member;
    :cond_1
    return-object v4
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;
    .locals 9
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "callback"    # Lcom/taobao/android/dexposed/XC_MethodHook;

    .prologue
    .line 96
    instance-of v7, p0, Ljava/lang/reflect/Method;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_0

    .line 97
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "only methods and constructors can be hooked"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_0
    const/4 v3, 0x0

    .line 102
    .local v3, "newMethod":Z
    sget-object v8, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v8

    .line 103
    :try_start_0
    sget-object v7, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .line 104
    .local v1, "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .end local v1    # "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    invoke-direct {v1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    .line 106
    .restart local v1    # "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    sget-object v7, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    invoke-interface {v7, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v3, 0x1

    .line 109
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1, p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz v3, :cond_2

    .line 112
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 113
    .local v2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "slot"

    invoke-static {p0, v7}, Lcom/taobao/android/dexposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    .line 117
    .local v6, "slot":I
    instance-of v7, p0, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    move-object v7, p0

    .line 118
    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v7, p0

    .line 119
    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 125
    .local v5, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;

    const/4 v7, 0x0

    invoke-direct {v0, v1, v4, v5, v7}, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;-><init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;Lcom/taobao/android/dexposed/XposedBridge$1;)V

    .line 126
    .local v0, "additionalInfo":Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;
    invoke-static {p0, v2, v6, v0}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethodNative(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)V

    .line 128
    .end local v0    # "additionalInfo":Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;
    .end local v2    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "slot":I
    :cond_2
    new-instance v7, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, p1, p0}, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;-><init>(Lcom/taobao/android/dexposed/XC_MethodHook;Ljava/lang/reflect/Member;)V

    return-object v7

    .line 109
    .end local v1    # "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v1    # "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    .restart local v2    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "slot":I
    :cond_3
    move-object v7, p0

    .line 121
    check-cast v7, Ljava/lang/reflect/Constructor;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 122
    .restart local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .restart local v5    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method private static synchronized native declared-synchronized hookMethodNative(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method private static native initNative()Z
.end method

.method public static varargs invokeNonVirtual(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    const-class v0, Ljava/lang/reflect/Method;

    const-string v1, "slot"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 307
    .local v8, "s_field":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 308
    invoke-virtual {v8, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 309
    .local v5, "slot":I
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/taobao/android/dexposed/XposedBridge;->invokeNonVirtualNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 312
    .end local v5    # "slot":I
    .end local v8    # "s_field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v7

    .line 314
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v7}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 315
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    throw v7

    .line 318
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 319
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v0, Lcom/taobao/android/dexposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/dexposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static native invokeNonVirtualNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .param p1, "thisObject"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    sget-object p2, Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 364
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 365
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 366
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 374
    .local v3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 367
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 368
    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 369
    .restart local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .restart local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 371
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method must be of type Method or Constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "I[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public static declared-synchronized log(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v1, Lcom/taobao/android/dexposed/XposedBridge;

    monitor-enter v1

    :try_start_0
    const-string v0, "Xposed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v1

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized log(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    const-class v1, Lcom/taobao/android/dexposed/XposedBridge;

    monitor-enter v1

    :try_start_0
    const-string v0, "Xposed"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v1

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static main()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    :try_start_0
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->initNative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 56
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const-string v1, "Errors during native Xposed initialization"

    invoke-static {v1}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "t":Ljava/lang/Throwable;
    const-string v1, "Errors during Xposed initialization"

    invoke-static {v1}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 62
    sput-boolean v2, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z

    goto :goto_0
.end method

.method public static setGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 76
    sput-object p0, Lcom/taobao/android/dexposed/XposedBridge;->mGroup:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->hookedGroupCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    return-void
.end method

.method public static unhookAllMethods()V
    .locals 5

    .prologue
    .line 172
    sget-object v4, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 173
    :try_start_0
    sget-object v3, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 176
    .local v2, "unhooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 177
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    invoke-virtual {v3}, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->unhook()V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    .end local v2    # "unhooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 181
    :cond_1
    :try_start_1
    sget-object v3, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 182
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method

.method public static unhookGroupMethods(Ljava/lang/String;)V
    .locals 4
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v3, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 187
    :try_start_0
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 188
    .local v1, "unhooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;"
    if-nez v1, :cond_0

    .line 189
    monitor-exit v3

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 192
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    invoke-virtual {v2}, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->unhook()V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->hookedGroupCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 195
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->allGroupUnhookMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "unhooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)V
    .locals 3
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "callback"    # Lcom/taobao/android/dexposed/XC_MethodHook;

    .prologue
    .line 138
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 139
    :try_start_0
    sget-object v1, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .line 140
    .local v0, "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    if-nez v0, :cond_0

    .line 141
    monitor-exit v2

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<Lcom/taobao/android/dexposed/XC_MethodHook;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
