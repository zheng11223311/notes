.class public Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/hotpatch/HotPatchManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;
    }
.end annotation


# static fields
.field public static final ALARM_DELAY_SECOND:Ljava/lang/String; = "alarm_delay_seconds"

.field public static final DISABLE_ALARM:Ljava/lang/String; = "disable_alarm"

.field public static final DISABLE_HOTPATCH:Ljava/lang/String; = "disable_hotpatch"

.field public static final INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public appContext:Lcom/alibaba/sdk/android/app/AppContext;

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->h:Ljava/util/HashMap;

    invoke-static {}, Lcom/alibaba/sdk/android/AlibabaSDK;->getVersion()Lcom/alibaba/sdk/android/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/Version;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    sget-object v0, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    const/4 v1, 0x3

    const-string v2, "hotpatch_sdk"

    const-string v3, "loadPatch"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->action(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->begin()Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v8

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v6, Lcom/taobao/hotpatch/patch/PatchResult;->FILE_NOT_FOUND:I

    :goto_0
    return v6

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget v6, Lcom/taobao/hotpatch/patch/PatchResult;->FILE_NOT_FOUND:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v1, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-static {p2, p4, v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/security/SecurityGuardService;)I

    move-result v6

    sget v0, Lcom/alibaba/sdk/android/hotpatch/g;->a:I

    if-eq v6, v0, :cond_2

    const-string v0, "hotpatch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package verify failed, please check sign, the error code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->getCaseTime()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;JILcom/taobao/hotpatch/patch/PatchResult;)V

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to load the patch, the error message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v1, 0x0

    sget v2, Lcom/alibaba/sdk/android/hotpatch/g;->k:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v2, v0}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->getCaseTime()J

    move-result-wide v4

    sget v6, Lcom/alibaba/sdk/android/hotpatch/g;->k:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;JILcom/taobao/hotpatch/patch/PatchResult;)V

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    sget v6, Lcom/alibaba/sdk/android/hotpatch/g;->k:I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->c(Landroid/content/Context;)Lcom/taobao/hotpatch/util/PatchResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hotpatch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to load so files, the error message is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->getCaseTime()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;JILcom/taobao/hotpatch/patch/PatchResult;)V

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v6

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Lcom/taobao/android/dexposed/XposedBridge;->unhookGroupMethods(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/taobao/android/dexposed/XposedBridge;->setGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->h:Ljava/util/HashMap;

    invoke-static {v0, p2, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->load(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v7

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->getCaseTime()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;JILcom/taobao/hotpatch/patch/PatchResult;)V

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->success()V

    sget v6, Lcom/alibaba/sdk/android/hotpatch/g;->a:I

    goto/16 :goto_0

    :cond_4
    const-string v0, "hotpatch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to apply the patch, the error code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the error message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    invoke-virtual {v7}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto/16 :goto_0
.end method

.method private a()V
    .locals 9

    const/4 v8, -0x1

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "hotpatch"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v1, "hot_patch_list"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/alibaba/sdk/android/hotpatch/impl/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/hotpatch/impl/a;-><init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/io/File;Ljava/util/List;J)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v1, "[|]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    iget-object v6, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".apkLocalPath"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v6, v8, :cond_3

    if-eq v7, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v1, "hot_patch_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[|]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    iget-object v5, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apkLocalPath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "hot_patch_list"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apkLocalPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".useSupport"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JILcom/taobao/hotpatch/patch/PatchResult;)V
    .locals 7

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget v0, Lcom/alibaba/sdk/android/hotpatch/g;->a:I

    if-ne p5, v0, :cond_2

    const-string v4, "hotpatchSuccess"

    :goto_0
    const-string/jumbo v0, "type"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "msg"

    invoke-virtual {p6}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "name"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v1, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sdk_hotpatch_result"

    move-wide v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/ut/UserTrackerService;->sendCustomHit(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "hotpatchFailed"

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->g:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to parse the public key, the error message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v1, v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v2, v2, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-boolean v2, v2, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-boolean v1, v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    iget-boolean v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->md5:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v1, v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lcom/taobao/android/dexposed/XposedBridge;->unhookGroupMethods(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/taobao/update/DefaultDownloader;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/update/DefaultDownloader;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alibaba/sdk/android/hotpatch/c;

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v2, v2, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v3, v3, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v4, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->md5:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/sdk/android/hotpatch/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taobao/update/DefaultDownloader;->setListener(Lcom/taobao/update/Downloader$OnDownloaderListener;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "hotpatch"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    const-string v2, "hotPatch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start download the patch from url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v4, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->packageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget-object v2, v2, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->packageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iget v3, v3, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->size:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/taobao/update/DefaultDownloader;->download(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private b(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v2, "hot_patch_list"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "[|]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    array-length v5, v4

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    iget-object v7, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hot_patch_list"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apkLocalPath"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".md5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->md5:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pri"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".useSupport"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    iput-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->g:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->stopAlarm()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->k:Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->k:Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized apply(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "hotpatch"

    const-string v1, "device is not support"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v1, "hot_patch_list"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    if-nez v1, :cond_8

    move v1, v2

    :goto_2
    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->md5:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget v4, Lcom/alibaba/sdk/android/hotpatch/g;->a:I

    if-eq v1, v4, :cond_a

    sget v4, Lcom/alibaba/sdk/android/hotpatch/g;->i:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/alibaba/sdk/android/hotpatch/g;->j:I

    if-ne v1, v4, :cond_4

    :cond_5
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V

    const-string v1, "hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The current patch is skipped "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    const-string v4, "hotpatch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fail to apply the patch "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", the error message is"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    const-string v1, "[|]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pri"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    invoke-direct {v6}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;-><init>()V

    iput-object v5, v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apkLocalPath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".md5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->md5:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".pri"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".useSupport"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v6, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    :try_start_5
    iget-object v1, v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1}, Lcom/taobao/android/dexposed/XposedBridge;->unhookGroupMethods(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d:Ljava/util/Map;

    iget-object v4, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public declared-synchronized getInstalledPatchList()Lorg/json/JSONObject;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v2, "certVersion"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "certVersion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "installedPatchList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "group"

    iget-object v6, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "version"

    iget-object v6, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "priority"

    iget-object v6, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "useSupport"

    iget-boolean v0, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/alibaba/sdk/android/app/AppContext;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/alibaba/sdk/android/app/AppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    const-string v2, "onesdk_hotpatch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v2, "disable_hotpatch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b:Z

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/sdk/android/hotpatch/e;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/hotpatch/e;-><init>(Z)V

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sdk_version"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v2, "hot_patch_list"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "[|]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".apkLocalPath"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/sdk/android/hotpatch/impl/d;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/sdk/android/hotpatch/impl/d;-><init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v1, "disable_alarm"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v2, "expireIn"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v4, "certVersion"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "sdk_version"

    iget-object v6, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->j:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    cmp-long v5, v2, v8

    if-eqz v5, :cond_5

    const-string v5, "expireIn"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "certVersion"

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    const-string v1, "disable_alarm"

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    invoke-direct {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v1, "disable_alarm"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->startAlarm()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public isHotPatchQueryRequired()Z
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v2, "expireIn"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDownloadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/hotpatch/impl/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/hotpatch/impl/b;-><init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDownloadFinsh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/hotpatch/impl/c;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/hotpatch/impl/c;-><init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDownloadProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onHotPatchUpdateResponse(Lorg/json/JSONObject;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to update hotpatch info, the error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", the message is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "hotpatch"

    const-string v1, "No hotpatch update data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to process patch info, the error message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "expireIn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-string v4, "expireIn"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v2, "certVersion"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "certVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "certContent"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v3, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {v0, v3}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    const-string v3, "hotpatch.certContents"

    invoke-interface {v0, v3, v2}, Lcom/alibaba/sdk/android/security/SecurityGuardService;->putValueInDynamicDataStore(Ljava/lang/String;[B)V

    :cond_5
    const-string v0, "patchList"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "hotpatch"

    const-string v1, "No hotpatch update info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;-><init>()V

    const-string v5, "group"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->name:Ljava/lang/String;

    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->packageUrl:Ljava/lang/String;

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->version:Ljava/lang/String;

    const-string/jumbo v5, "size"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->size:I

    const-string v5, "pri"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->pri:Ljava/lang/String;

    const-string v5, "md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->md5:Ljava/lang/String;

    const-string/jumbo v5, "useSupport"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v4, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->useSupport:Z

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e:Ljava/util/Queue;

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :try_start_6
    invoke-direct {p0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized saveProperties(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setHotPatchQueryListener(Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->k:Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startAlarm()V
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.sdk.android.hotpatch.action.HOT_PATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c:Landroid/content/SharedPreferences;

    const-string v3, "alarm_delay_seconds"

    const/16 v4, 0x78

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public stopAlarm()V
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.sdk.android.hotpatch.action.HOT_PATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->i:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
