.class public Lcom/youku/config/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static APK_PATH:Ljava/lang/String; = null

.field public static final AiruiAppKey:Ljava/lang/String; = "6fe182495c9c796b"

.field public static final Analytics_APPID:Ljava/lang/String; = "c21b5c0b69b1187b"

.field public static final Debug:Z = false

.field public static final HUAWEI_MAIMANG_PID:Ljava/lang/String; = "fe65cd8419c50510"

.field public static final MODEL_BLACK_LIST:[Ljava/lang/String;

.field public static OS_VER:Ljava/lang/String; = null

.field public static QIHOOTUDOU_SECRET:Ljava/lang/String; = null

.field public static final SHUMENG_MONITOR_LIST:[Ljava/lang/String;

.field public static VER:Ljava/lang/String; = null

.field public static VER_CODE:I = 0x0

.field public static VER_KEY:Ljava/lang/String; = null

.field private static final Wireless_pid:Ljava/lang/String; = "34d185b5c1336e16"

.field public static final YOUCANGUESS:Ljava/lang/String; = "094b2a34e812a4282f25c7ca1987789f"

.field public static isGongxinbu:Z

.field public static isOpenAirui:Z

.field public static isOpenComscore:Z

.field public static final isTestHost:Z

.field public static trackmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    sput-boolean v4, Lcom/youku/config/Profile;->isGongxinbu:Z

    .line 70
    sput-boolean v3, Lcom/youku/config/Profile;->isOpenAirui:Z

    .line 72
    sput-boolean v3, Lcom/youku/config/Profile;->isOpenComscore:Z

    .line 135
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HTC_HTC Bee"

    aput-object v1, v0, v4

    const-string v1, "HTC_HTC Salsa C510e"

    aput-object v1, v0, v3

    const-string v1, "HTC_HERO200"

    aput-object v1, v0, v5

    const-string v1, "HTC_HTC Legend"

    aput-object v1, v0, v6

    const-string v1, "htc_A3380"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "unknown_MeiYi G11 Rhyme"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ainol_NOVO7PALADIN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HUAWEI_C8800"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HUAWEI_HUWEI T8100"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HUAWEI_HUAWEI T8300"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HUAWEI_SONIC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "YuLong_D530"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "YuLong_D539"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "YuLong_D5800"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "YuLong_N950"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "unknown_Lenovo A60"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Motorola_A1680"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Motorola_ME600"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MOTOROLA_MT620"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "motorola_XT301"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "FIH_Motorola-XT502"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "motorola_XT710"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Samsung_GT-I5508"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Samsung_SCH-i559"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Samsung_GT-I5700"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "samsung_SCH-i569"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Sony Ericsson_E16i"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Sony Ericsson_X10i"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Sony Ericsson_X11i"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "unknown_W606"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "telechips_SmartQT7"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ZTE_ZTE-C N880"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "ZTE_ZTE-C N600+"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ZTE_ZTE-C N606"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ZTE_ZTE-C R750"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ZTE_ZTE-T U880"

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/config/Profile;->MODEL_BLACK_LIST:[Ljava/lang/String;

    .line 149
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1dd5ddccb772c35e"

    aput-object v1, v0, v4

    const-string v1, "c840a66e1bc6e1e4"

    aput-object v1, v0, v3

    const-string v1, "5976230778810016"

    aput-object v1, v0, v5

    const-string v1, "bed98d4a6546316a"

    aput-object v1, v0, v6

    const-string v1, "cf2b9178d1bbe452"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "4cffd67aafab6651"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "b096eb8e37e04cf6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bef44f212213dbf7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "375affecc990f205"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "a7c131ef38f2e415"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ebd52ff0abc7b7c6"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "862e677d2535c154"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "a663900d328a2cb6"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fbf7b2191bd7b918"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bcf59c20ea7f1a36"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f2f21a1e7f05844e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "a38d2714a5aca744"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "c2f1b8e0742f4d91"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "f3b7323cf1504dff"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "f4702bb8776f3c0f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "7e510891025fdc73"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1dd5ddccb772c35e"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "a3276a2d229e75e5"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "3db803b59df358be"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "9d8d7085c6199a85"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "c00851c6e15e2e86"

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/config/Profile;->SHUMENG_MONITOR_LIST:[Ljava/lang/String;

    .line 180
    const-string v0, "android_general"

    sput-object v0, Lcom/youku/config/Profile;->VER_KEY:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/youku/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/config/Profile;->APK_PATH:Ljava/lang/String;

    .line 188
    const-string v0, "087e778f97c57ae6dba07ba703f87a8c"

    sput-object v0, Lcom/youku/config/Profile;->QIHOOTUDOU_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 39
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 44
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 51
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 51
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 54
    :goto_2
    throw v4

    .line 52
    :catch_3
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getPid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 25
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v1, ""

    .line 27
    .local v1, "channel":Ljava/lang/String;
    :try_start_0
    const-string v2, "channel_name"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/config/Profile;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-string v1, "34d185b5c1336e16"

    .line 34
    .end local v1    # "channel":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 28
    .restart local v1    # "channel":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
