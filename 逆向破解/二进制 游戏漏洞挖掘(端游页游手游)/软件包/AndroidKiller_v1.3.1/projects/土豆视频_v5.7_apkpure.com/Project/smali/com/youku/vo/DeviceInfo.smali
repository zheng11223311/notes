.class public final Lcom/youku/vo/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static ACTIVE_TIME:Ljava/lang/String;

.field public static BRAND:Ljava/lang/String;

.field public static CPU:Ljava/lang/String;

.field public static DENSITY:F

.field public static DENSITYDPI:F

.field public static DEVICEID:Ljava/lang/String;

.field public static GUID:Ljava/lang/String;

.field public static HEIGHT:I

.field public static HOST_IP:Ljava/lang/String;

.field public static IMEI:Ljava/lang/String;

.field public static IMSI:Ljava/lang/String;

.field public static MAC:Ljava/lang/String;

.field public static MANUFACTURER:Ljava/lang/String;

.field public static MEM_FREE:Ljava/lang/String;

.field public static MEM_TOTAL:Ljava/lang/String;

.field public static MOBILE:Ljava/lang/String;

.field public static MODEL:Ljava/lang/String;

.field public static NETWORKINFO:Ljava/lang/String;

.field public static NETWORKTYPE:Ljava/lang/String;

.field public static OPERATOR:Ljava/lang/String;

.field public static OS:Ljava/lang/String;

.field public static ROM_FREE:Ljava/lang/String;

.field public static ROM_TOTAL:Ljava/lang/String;

.field public static SDCARD_FREE:Ljava/lang/String;

.field public static SDCARD_TOTAL:Ljava/lang/String;

.field public static UUID:Ljava/lang/String;

.field public static WIDTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->MANUFACTURER:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->BRAND:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->OS:Ljava/lang/String;

    .line 23
    sput v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    .line 25
    sput v1, Lcom/youku/vo/DeviceInfo;->HEIGHT:I

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->IMEI:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->IMSI:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->OPERATOR:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->MAC:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->UUID:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->GUID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->MOBILE:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->CPU:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->NETWORKINFO:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->NETWORKTYPE:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->MEM_TOTAL:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->MEM_FREE:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->ROM_TOTAL:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->ROM_FREE:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->SDCARD_TOTAL:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->SDCARD_FREE:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->ACTIVE_TIME:Ljava/lang/String;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/youku/vo/DeviceInfo;->HOST_IP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method
