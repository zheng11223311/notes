.class public Lcom/youku/service/acc/AccInitData;
.super Ljava/lang/Object;
.source "AccInitData.java"


# static fields
.field public static final ANDROID_VERSION_RESTRICT:Ljava/lang/String; = "android_version_restrict"

.field public static final CPU_RESTRICT:Ljava/lang/String; = "cpu_restrict"

.field public static final DOWNLOAD_SWITCH:Ljava/lang/String; = "download_switch"

.field public static final MEMORY_RESTRICT:Ljava/lang/String; = "memory_restrict"

.field public static final P2P_SWITCH:Ljava/lang/String; = "p2p_switch"

.field public static final PLAY_SWITCH:Ljava/lang/String; = "play_switch"

.field public static final PREFS_MODE:I = 0x4

.field public static final PREFS_NAME:Ljava/lang/String; = "p2p_init"

.field public static final SDCARD_RESTRICT:Ljava/lang/String; = "sdcard_restrict"

.field private static final TAG:Ljava/lang/String; = "Accelerater_InitData"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static sAndroidVerRestrict:I

.field public static sCpuFreq:I

.field public static sCpuRestrict:I

.field public static sHasNeon:Z

.field public static sInited:Ljava/lang/Boolean;

.field public static sIsArmv7a:Z

.field private static sIsUplayerSupported:Z

.field public static sMemoryRestrict:I

.field public static sP2pSwitch:I

.field public static sSdcardRestrict:Ljava/lang/Boolean;

.field public static sUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/service/acc/AccInitData;->sUserID:Ljava/lang/String;

    .line 39
    sput v2, Lcom/youku/service/acc/AccInitData;->sP2pSwitch:I

    .line 41
    const/16 v0, 0x2f

    sput v0, Lcom/youku/service/acc/AccInitData;->sMemoryRestrict:I

    .line 43
    const/16 v0, 0x320

    sput v0, Lcom/youku/service/acc/AccInitData;->sCpuRestrict:I

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/youku/service/acc/AccInitData;->sSdcardRestrict:Ljava/lang/Boolean;

    .line 47
    const/16 v0, 0x9

    sput v0, Lcom/youku/service/acc/AccInitData;->sAndroidVerRestrict:I

    .line 50
    sput-boolean v1, Lcom/youku/service/acc/AccInitData;->sIsUplayerSupported:Z

    .line 56
    sput v1, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/youku/service/acc/AccInitData;->sInited:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidVersionRestrict(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string v1, "android_version_restrict"

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCpuRestrict(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string v1, "cpu_restrict"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDownloadSwitch(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const-string v2, "p2p_init"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "savedata":Landroid/content/SharedPreferences;
    const-string v2, "download_switch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    .local v0, "flag":Ljava/lang/Boolean;
    const-string v2, "Accelerater_InitData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadSwitch : flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object v0
.end method

.method public static getMemoryRestrict(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string v1, "memory_restrict"

    const/16 v2, 0x2f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getP2pSwitch(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string v1, "p2p_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPlaySwitch(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string v2, "p2p_init"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 223
    .local v1, "savedata":Landroid/content/SharedPreferences;
    const-string v2, "play_switch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 224
    .local v0, "flag":Ljava/lang/Boolean;
    const-string v2, "Accelerater_InitData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadSwitch : flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public static getSdcardRestrict(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "sdcard_restrict"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getUserID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isUplayerSupported(I)Z
    .locals 12
    .param p0, "cpuRestrict"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 75
    const-string v0, "armeabi-v7a"

    .line 78
    .local v0, "ARMV7A":Ljava/lang/String;
    sput-boolean v8, Lcom/youku/service/acc/AccInitData;->sHasNeon:Z

    .line 79
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "x86"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    sput-boolean v7, Lcom/youku/service/acc/AccInitData;->sIsUplayerSupported:Z

    .line 81
    sget-boolean v8, Lcom/youku/service/acc/AccInitData;->sIsUplayerSupported:Z

    .line 138
    :goto_0
    return v8

    .line 83
    :cond_0
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "armeabi-v7a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sput-boolean v9, Lcom/youku/service/acc/AccInitData;->sIsArmv7a:Z

    .line 85
    const/4 v5, 0x0

    .line 88
    .local v5, "sdkVersion":I
    :try_start_0
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 93
    :goto_1
    const/16 v9, 0x8

    if-ge v5, v9, :cond_1

    .line 94
    const-string v7, "Accelerater_InitData"

    const-string v9, "Android version is less than 2.2, not supported by Uplayer!!"

    invoke-static {v7, v9}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    goto :goto_1

    .line 99
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v1, ""

    .line 101
    .local v1, "cpuInfo":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/cpuinfo"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    .local v2, "cpuinfoReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "strLine":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 107
    const-string v9, "FEATURES"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 108
    const/16 v9, 0x3a

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 109
    .local v4, "idx":I
    if-eq v4, v11, :cond_2

    .line 110
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 111
    const-string v9, "NEON"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_3

    move v9, v7

    :goto_3
    sput-boolean v9, Lcom/youku/service/acc/AccInitData;->sHasNeon:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 130
    .end local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    .end local v4    # "idx":I
    .end local v6    # "strLine":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 135
    :goto_4
    sget v9, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    add-int/lit16 v9, v9, 0x3e7

    sput v9, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    .line 136
    sget v9, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    div-int/lit16 v9, v9, 0x3e8

    sput v9, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    .line 137
    sget v9, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    if-lt v9, p0, :cond_6

    sget-boolean v9, Lcom/youku/service/acc/AccInitData;->sIsArmv7a:Z

    if-eqz v9, :cond_6

    sget-boolean v9, Lcom/youku/service/acc/AccInitData;->sHasNeon:Z

    if-eqz v9, :cond_6

    :goto_5
    sput-boolean v7, Lcom/youku/service/acc/AccInitData;->sIsUplayerSupported:Z

    .line 138
    sget-boolean v8, Lcom/youku/service/acc/AccInitData;->sIsUplayerSupported:Z

    goto/16 :goto_0

    .restart local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    .restart local v4    # "idx":I
    .restart local v6    # "strLine":Ljava/lang/String;
    :cond_3
    move v9, v8

    .line 111
    goto :goto_3

    .line 116
    .end local v4    # "idx":I
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 117
    const/4 v2, 0x0

    .line 119
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .restart local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_5

    .line 123
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cpu0 max frequency: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .end local v2    # "cpuinfoReader":Ljava/io/BufferedReader;
    .end local v6    # "strLine":Ljava/lang/String;
    :cond_6
    move v7, v8

    .line 137
    goto :goto_5
.end method

.method public static printAll(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "Accelerater_InitData"

    const-string v1, "=====p2p initData======"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "Accelerater_InitData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sP2pSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getP2pSwitch(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsMemoryRestrict = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getMemoryRestrict(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsCpuRestrict = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getCpuRestrict(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsSdcardRestrict = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getSdcardRestrict(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsAndroidVerRestrict = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getAndroidVersionRestrict(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setAndroidVersionRestrict(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I

    .prologue
    .line 179
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_version_restrict"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public static setCpuRestrict(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpu"    # I

    .prologue
    .line 173
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cpu_restrict"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public static setDownloadSwitch(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadSwitch"    # Ljava/lang/Boolean;

    .prologue
    .line 149
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "download_switch"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method

.method public static setMemoryRestrict(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "space"    # I

    .prologue
    .line 167
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "memory_restrict"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public static setP2pSwitch(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "p2pSwitch"    # I

    .prologue
    .line 143
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "p2p_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method public static setPlaySwitch(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playSwitch"    # Ljava/lang/Boolean;

    .prologue
    .line 155
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "play_switch"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void
.end method

.method public static setSdcardRestrict(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdcard"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "sdcard_restrict"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public static setUserID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v1, "p2p_init"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method
