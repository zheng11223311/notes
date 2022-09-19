.class public Lcom/youku/gamecenter/download/DownloadConstants;
.super Ljava/lang/Object;
.source "DownloadConstants.java"


# static fields
.field public static APPKEY:Ljava/lang/String;

.field public static BASE_URL_LIST:[Ljava/lang/String;

.field public static DEBUG_MODE:Z

.field public static LOG_TAG:Ljava/lang/String;

.field public static RICH_NOTIFICATION:Z

.field public static TIPS_DOWNLOAD:Z

.field public static sdk_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    const-string v0, "1.0"

    sput-object v0, Lcom/youku/gamecenter/download/DownloadConstants;->sdk_version:Ljava/lang/String;

    .line 6
    sput-boolean v2, Lcom/youku/gamecenter/download/DownloadConstants;->DEBUG_MODE:Z

    .line 8
    const-string v0, ""

    sput-object v0, Lcom/youku/gamecenter/download/DownloadConstants;->APPKEY:Ljava/lang/String;

    .line 10
    sput-boolean v2, Lcom/youku/gamecenter/download/DownloadConstants;->TIPS_DOWNLOAD:Z

    .line 12
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    sput-object v0, Lcom/youku/gamecenter/download/DownloadConstants;->BASE_URL_LIST:[Ljava/lang/String;

    .line 14
    const-string v0, "game_center_download"

    sput-object v0, Lcom/youku/gamecenter/download/DownloadConstants;->LOG_TAG:Ljava/lang/String;

    .line 16
    sput-boolean v3, Lcom/youku/gamecenter/download/DownloadConstants;->RICH_NOTIFICATION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
