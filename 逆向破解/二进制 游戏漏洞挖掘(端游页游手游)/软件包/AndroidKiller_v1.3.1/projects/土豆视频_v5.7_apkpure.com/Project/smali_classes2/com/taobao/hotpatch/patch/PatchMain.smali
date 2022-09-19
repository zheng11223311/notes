.class public Lcom/taobao/hotpatch/patch/PatchMain;
.super Ljava/lang/Object;
.source "PatchMain.java"


# static fields
.field private static isLoadedSO:Z

.field private static final loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/hotpatch/patch/ReadWriteSet",
            "<",
            "Lcom/taobao/hotpatch/patch/PatchCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-direct {v0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;-><init>()V

    sput-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/hotpatch/patch/PatchMain;->isLoadedSO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized canHook(Landroid/content/Context;)Lcom/taobao/hotpatch/util/PatchResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v2, Lcom/taobao/hotpatch/patch/PatchMain;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "use_support"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, "useSupport":Z
    if-nez v0, :cond_0

    .line 86
    new-instance v1, Lcom/taobao/hotpatch/util/PatchResult;

    const/4 v3, 0x0

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->DEVICE_UNSUPPORT:I

    const-string v5, "This device is unsupport by server side"

    invoke-direct {v1, v3, v4, v5}, Lcom/taobao/hotpatch/util/PatchResult;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit v2

    return-object v1

    .line 88
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Lcom/taobao/hotpatch/util/PatchResult;

    const/4 v3, 0x0

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->DEVICE_UNSUPPORT:I

    const-string v5, "This device is not support"

    invoke-direct {v1, v3, v4, v5}, Lcom/taobao/hotpatch/util/PatchResult;-><init>(ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "useSupport":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 92
    .restart local v0    # "useSupport":Z
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/taobao/hotpatch/patch/PatchMain;->loadDexposedLib(Landroid/content/Context;)Lcom/taobao/hotpatch/util/PatchResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0
.end method

.method private static hookLoadPatch(Lcom/taobao/hotpatch/patch/PatchCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/taobao/hotpatch/patch/PatchCallback;

    .prologue
    .line 195
    sget-object v1, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-virtual {v0, p0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isImplementInterface(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "entry":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "interClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 180
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 183
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 184
    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/hotpatch/patch/PatchResult;"
        }
    .end annotation

    .prologue
    .local p2, "contentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 105
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    new-instance v3, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->FILE_NOT_FOUND:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FILE not found on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-object v3

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/taobao/hotpatch/patch/PatchMain;->canHook(Landroid/content/Context;)Lcom/taobao/hotpatch/util/PatchResult;

    move-result-object v3

    .line 111
    .local v3, "result":Lcom/taobao/hotpatch/patch/PatchResult;
    invoke-virtual {v3}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/taobao/hotpatch/patch/PatchMain;->loadAllCallbacks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    sget-object v4, Lcom/taobao/hotpatch/patch/IPatch;->sReplacementMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    move-object v4, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/taobao/hotpatch/patch/IPatch;->sReplacementMap:Ljava/util/HashMap;

    invoke-static {v4, v5, p1, v6}, Lcom/taobao/hotpatch/res/ResReplacer;->ReplaceResources(Landroid/app/Application;Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    :goto_1
    sget-object v4, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-virtual {v4}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->getSize()I

    move-result v4

    if-nez v4, :cond_3

    .line 129
    new-instance v3, Lcom/taobao/hotpatch/patch/PatchResult;

    .end local v3    # "result":Lcom/taobao/hotpatch/patch/PatchResult;
    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->NO_PATCH_CLASS_HANDLE:I

    const-string v5, "No patch class to be handle"

    invoke-direct {v3, v7, v4, v5}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_0

    .line 123
    .restart local v3    # "result":Lcom/taobao/hotpatch/patch/PatchResult;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Lcom/taobao/hotpatch/patch/PatchParam;

    sget-object v4, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-direct {v2, v4}, Lcom/taobao/hotpatch/patch/PatchParam;-><init>(Lcom/taobao/hotpatch/patch/ReadWriteSet;)V

    .line 133
    .local v2, "lpparam":Lcom/taobao/hotpatch/patch/PatchParam;
    iput-object p0, v2, Lcom/taobao/hotpatch/patch/PatchParam;->context:Landroid/content/Context;

    .line 134
    iput-object p2, v2, Lcom/taobao/hotpatch/patch/PatchParam;->contentMap:Ljava/util/HashMap;

    .line 136
    invoke-static {v2}, Lcom/taobao/hotpatch/patch/PatchCallback;->callAll(Lcom/taobao/hotpatch/patch/PatchParam;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v3

    goto :goto_0
.end method

.method private static loadAllCallbacks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v12, 0x0

    .line 141
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "odex"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "dexoptFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    const/4 v6, 0x0

    .line 147
    .local v6, "mcl":Ljava/lang/ClassLoader;
    :try_start_1
    new-instance v6, Ldalvik/system/DexClassLoader;

    .end local v6    # "mcl":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, p1, v8, v9, p2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .restart local v6    # "mcl":Ljava/lang/ClassLoader;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "odex"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 152
    .local v0, "dexFile":Ldalvik/system/DexFile;
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 154
    .local v5, "entrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    sget-object v9, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    :try_start_3
    sget-object v8, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-virtual {v8}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->clear()V

    .line 156
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :cond_1
    :goto_0
    :try_start_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    .local v3, "entry":Ljava/lang/String;
    const/4 v4, 0x0

    .line 161
    .local v4, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_5
    invoke-virtual {v6, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    .line 166
    :try_start_6
    const-class v8, Lcom/taobao/hotpatch/patch/IPatch;

    invoke-static {v4, v8}, Lcom/taobao/hotpatch/patch/PatchMain;->isImplementInterface(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 168
    .local v7, "moduleInstance":Ljava/lang/Object;
    new-instance v8, Lcom/taobao/hotpatch/patch/PatchCallback;

    check-cast v7, Lcom/taobao/hotpatch/patch/IPatch;

    .end local v7    # "moduleInstance":Ljava/lang/Object;
    invoke-direct {v8, v7}, Lcom/taobao/hotpatch/patch/PatchCallback;-><init>(Lcom/taobao/hotpatch/patch/IPatch;)V

    invoke-static {v8}, Lcom/taobao/hotpatch/patch/PatchMain;->hookLoadPatch(Lcom/taobao/hotpatch/patch/PatchCallback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 172
    .end local v0    # "dexFile":Ldalvik/system/DexFile;
    .end local v1    # "dexoptFile":Ljava/io/File;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "entrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "mcl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v9, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    const-string v10, "Find patch class exception "

    invoke-direct {v8, v12, v9, v10, v2}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 148
    .restart local v1    # "dexoptFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_7
    new-instance v8, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v9, 0x0

    sget v10, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    const-string v11, "Find patch class exception "

    invoke-direct {v8, v9, v10, v11, v2}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 156
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "dexFile":Ldalvik/system/DexFile;
    .restart local v5    # "entrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6    # "mcl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v8

    .line 162
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v4    # "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 175
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v8, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v9, 0x1

    sget v10, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string v11, ""

    invoke-direct {v8, v9, v10, v11}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_1
.end method

.method private static loadDexposedLib(Landroid/content/Context;)Lcom/taobao/hotpatch/util/PatchResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 203
    sget-boolean v1, Lcom/taobao/hotpatch/patch/PatchMain;->isLoadedSO:Z

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Lcom/taobao/hotpatch/util/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string v3, "The so loaded."

    invoke-direct {v1, v4, v2, v3}, Lcom/taobao/hotpatch/util/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 218
    :goto_0
    return-object v1

    .line 205
    :cond_0
    if-nez p0, :cond_1

    .line 206
    new-instance v1, Lcom/taobao/hotpatch/util/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->LOAD_SO_EXCEPTION:I

    const-string v3, "Context cann\'t be null."

    invoke-direct {v1, v5, v2, v3}, Lcom/taobao/hotpatch/util/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 211
    :cond_2
    const-string v1, "dexposed2.3"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 215
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/hotpatch/patch/PatchMain;->isLoadedSO:Z

    .line 216
    new-instance v1, Lcom/taobao/hotpatch/util/PatchResult;

    const/4 v2, 0x1

    sget v3, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/taobao/hotpatch/util/PatchResult;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/taobao/hotpatch/util/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->LOAD_SO_EXCEPTION:I

    const-string v3, "Exception happened during load dexposed so."

    invoke-direct {v1, v5, v2, v3, v0}, Lcom/taobao/hotpatch/util/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    const-string v1, "dexposed"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
