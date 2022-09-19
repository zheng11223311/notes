.class public Ltv/cjump/jni/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/cjump/jni/DeviceUtils$ARCH;
    }
.end annotation


# static fields
.field public static final ABI_MIPS:Ljava/lang/String; = "mips"

.field public static final ABI_X86:Ljava/lang/String; = "x86"

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static sArch:Ltv/cjump/jni/DeviceUtils$ARCH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->Unknown:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;
    .locals 10

    .prologue
    .line 36
    const-class v7, Ltv/cjump/jni/DeviceUtils;

    monitor-enter v7

    const/16 v6, 0x14

    :try_start_0
    new-array v0, v6, [B

    .line 37
    .local v0, "data":[B
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v8, "lib/libc.so"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v4, "libc":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    const/4 v2, 0x0

    .line 41
    .local v2, "fp":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    .end local v2    # "fp":Ljava/io/RandomAccessFile;
    .local v3, "fp":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 43
    const/16 v6, 0x13

    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x8

    const/16 v8, 0x12

    aget-byte v8, v0, v8

    or-int v5, v6, v8

    .line 44
    .local v5, "machine":I
    sparse-switch v5, :sswitch_data_0

    .line 58
    const-string v6, "NativeBitmapFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "libc.so is unknown arch: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :goto_0
    if-eqz v3, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    .end local v5    # "machine":I
    :cond_0
    :goto_1
    :try_start_4
    sget-object v6, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    return-object v6

    .line 46
    .restart local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v5    # "machine":I
    :sswitch_0
    :try_start_5
    sget-object v6, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v6, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 61
    .end local v5    # "machine":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 62
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fp":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    if-eqz v2, :cond_0

    .line 68
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 36
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fp":Ljava/io/RandomAccessFile;
    .end local v4    # "libc":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 49
    .restart local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v4    # "libc":Ljava/io/File;
    .restart local v5    # "machine":I
    :sswitch_1
    :try_start_9
    sget-object v6, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v6, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 63
    .end local v5    # "machine":I
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 64
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fp":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 66
    if-eqz v2, :cond_0

    .line 68
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 69
    :catch_3
    move-exception v1

    .line 70
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fp":Ljava/io/RandomAccessFile;
    .restart local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v5    # "machine":I
    :sswitch_2
    :try_start_d
    sget-object v6, Ltv/cjump/jni/DeviceUtils$ARCH;->MIPS:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v6, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    .line 65
    .end local v5    # "machine":I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .line 66
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v2    # "fp":Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v2, :cond_1

    .line 68
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 73
    :cond_1
    :goto_5
    :try_start_f
    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 55
    .end local v2    # "fp":Ljava/io/RandomAccessFile;
    .restart local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v5    # "machine":I
    :sswitch_3
    :try_start_10
    sget-object v6, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM64:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v6, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_0

    .line 69
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    .end local v5    # "machine":I
    .restart local v2    # "fp":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fp":Ljava/io/RandomAccessFile;
    .restart local v3    # "fp":Ljava/io/RandomAccessFile;
    .restart local v5    # "machine":I
    :catch_5
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fp":Ljava/io/RandomAccessFile;
    .end local v5    # "machine":I
    .restart local v2    # "fp":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    goto :goto_4

    .line 63
    :catch_6
    move-exception v1

    goto :goto_3

    .line 61
    :catch_7
    move-exception v1

    goto :goto_2

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x28 -> :sswitch_0
        0xb7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static get_CPU_ABI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static get_CPU_ABI2()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 84
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "CPU_ABI2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 85
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 98
    :goto_0
    return-object v1

    .line 88
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, "fieldValue":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 98
    goto :goto_0
.end method

.method public static isARMSimulatedByX86()Z
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 121
    .local v0, "arch":Ltv/cjump/jni/DeviceUtils$ARCH;
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->supportX86()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMagicBoxDevice()Z
    .locals 3

    .prologue
    .line 132
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 133
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 134
    .local v1, "productName":Ljava/lang/String;
    const-string v2, "MagicBox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "MagicBox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMiBox2Device()Z
    .locals 3

    .prologue
    .line 125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 126
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 127
    .local v1, "productName":Ljava/lang/String;
    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "dredd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isProblemBoxDevice()Z
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isMiBox2Device()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isMagicBoxDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRealARMArch()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 144
    .local v0, "arch":Ltv/cjump/jni/DeviceUtils$ARCH;
    const-string v1, "armeabi-v7a"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "armeabi"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRealX86Arch()Z
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 149
    .local v0, "arch":Ltv/cjump/jni/DeviceUtils$ARCH;
    const-string/jumbo v1, "x86"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static supportABI(Ljava/lang/String;)Z
    .locals 4
    .param p0, "requestAbi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->get_CPU_ABI()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->get_CPU_ABI2()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "abi2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supportMips()Z
    .locals 1

    .prologue
    .line 116
    const-string v0, "mips"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportX86()Z
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "x86"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
