.class public Lcom/taobao/hotpatch/util/HotPatchUtils;
.super Ljava/lang/Object;
.source "HotPatchUtils.java"


# static fields
.field private static final LIB_ART:Ljava/lang/String; = "libart.so"

.field private static final LIB_ART_D:Ljava/lang/String; = "libartd.so"

.field private static final LIB_DALVIK:Ljava/lang/String; = "libdvm.so"

.field private static final SELECT_RUNTIME_PROPERTY:Ljava/lang/String; = "persist.sys.dalvik.vm.lib"

.field private static isCheckedDeviceSupport:Z

.field private static isDeviceSupportable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    .line 20
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentRuntimeValue()Ljava/lang/String;
    .locals 8

    .prologue
    .line 42
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 45
    .local v2, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    .local v1, "get":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 48
    const-string v3, "WTF?!"
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 74
    .end local v1    # "get":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v3

    .line 51
    .restart local v1    # "get":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "persist.sys.dalvik.vm.lib"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Dalvik"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "value":Ljava/lang/String;
    const-string v4, "libdvm.so"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    const-string v3, "Dalvik"

    goto :goto_0

    .line 56
    :cond_2
    const-string v4, "libart.so"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    const-string v3, "ART"

    goto :goto_0

    .line 58
    :cond_3
    const-string v4, "libartd.so"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const-string v3, "ART debug build"
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 63
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v3, "IllegalAccessException"

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "IllegalArgumentException"

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "InvocationTargetException"
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "get":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    const-string v3, "SystemProperties.get(String key, String def) method is not found"
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "SystemProperties class is not found"

    goto :goto_0
.end method

.method private static isDalvikMode()Z
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->getCurrentRuntimeValue()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "vmMode":Ljava/lang/String;
    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 27
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isDeviceSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-class v1, Lcom/taobao/hotpatch/util/HotPatchUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    if-eqz v0, :cond_0

    .line 139
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    const-string v2, "hotpatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device support is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "checked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :goto_0
    monitor-exit v1

    return v0

    .line 141
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDalvikMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isSupportSDKVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isInBlackList()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isYunOS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :goto_1
    :try_start_3
    const-string v0, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device support is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    .line 151
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    :try_start_5
    const-string v2, "hotpatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device support is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "checked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isInBlackList()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isX86CPU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportSDKVersion()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isX86CPU()Z
    .locals 8

    .prologue
    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 98
    .local v0, "abi":Ljava/lang/String;
    const/4 v3, 0x0

    .line 99
    .local v3, "ir":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 101
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "getprop ro.product.cpu.abi"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 102
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .local v4, "ir":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v6, "x86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    const/4 v6, 0x1

    .line 110
    if-eqz v2, :cond_0

    .line 112
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 119
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 124
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 126
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_2
    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 132
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :goto_3
    return v6

    .line 110
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :cond_3
    if-eqz v2, :cond_4

    .line 112
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 117
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 119
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 124
    :cond_5
    :goto_5
    if-eqz v5, :cond_c

    .line 126
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 132
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_6
    :goto_6
    const/4 v6, 0x0

    goto :goto_3

    .line 127
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 128
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 108
    :catch_1
    move-exception v6

    .line 110
    :goto_7
    if-eqz v1, :cond_7

    .line 112
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 117
    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    .line 119
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 124
    :cond_8
    :goto_9
    if-eqz v5, :cond_6

    .line 126
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    .line 127
    :catch_2
    move-exception v6

    goto :goto_6

    .line 110
    :catchall_0
    move-exception v6

    :goto_a
    if-eqz v1, :cond_9

    .line 112
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 117
    :cond_9
    :goto_b
    if-eqz v3, :cond_a

    .line 119
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 124
    :cond_a
    :goto_c
    if-eqz v5, :cond_b

    .line 126
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 128
    :cond_b
    :goto_d
    throw v6

    .line 113
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v7

    goto :goto_0

    .line 120
    :catch_4
    move-exception v7

    goto :goto_1

    .line 127
    :catch_5
    move-exception v7

    goto :goto_2

    .line 113
    :catch_6
    move-exception v6

    goto :goto_4

    .line 120
    :catch_7
    move-exception v6

    goto :goto_5

    .line 113
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v6

    goto :goto_8

    .line 120
    :catch_9
    move-exception v6

    goto :goto_9

    .line 113
    :catch_a
    move-exception v7

    goto :goto_b

    .line 120
    :catch_b
    move-exception v7

    goto :goto_c

    .line 127
    :catch_c
    move-exception v7

    goto :goto_d

    .line 110
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_a

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_a

    .line 108
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v6

    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :cond_c
    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6
.end method

.method private static isYunOS()Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "s1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 159
    .local v3, "s2":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 161
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.yunos.version"

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 162
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "java.vm.name"

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "lemur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v4, v5

    .line 171
    :goto_1
    return v4

    :cond_2
    move v4, v6

    goto :goto_1

    .line 166
    :catch_0
    move-exception v4

    goto :goto_0

    .line 165
    :catch_1
    move-exception v4

    goto :goto_0

    .line 164
    :catch_2
    move-exception v4

    goto :goto_0

    .line 163
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static isYunOSSupport()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isYunOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
