.class public Lcom/youku/analytics/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final OFFICIAL_URL:Ljava/lang/String; = "http://sdk.m.youku.com/sdk/youku/data.json"

.field public static SEND_MAX_SIZE:I = 0x0

.field public static final TEST_URL:Ljava/lang/String; = "http://test.sdk.m.youku.com/sdk/youku/data.json"

.field public static cachePersentage:F

.field public static cacheSize:I

.field public static collectionSize:I

.field public static isTestHost:Z

.field public static isTrackLocation:Z

.field public static reportInterval:J

.field public static sessionInternal:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10
    sput-boolean v2, Lcom/youku/analytics/Constants;->isTrackLocation:Z

    .line 15
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/youku/analytics/Constants;->sessionInternal:J

    .line 20
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/youku/analytics/Constants;->reportInterval:J

    .line 25
    const/16 v0, 0x1e

    sput v0, Lcom/youku/analytics/Constants;->collectionSize:I

    .line 27
    sput-boolean v2, Lcom/youku/analytics/Constants;->isTestHost:Z

    .line 38
    const v0, 0x32000

    sput v0, Lcom/youku/analytics/Constants;->cacheSize:I

    .line 40
    const v0, 0x19000

    sput v0, Lcom/youku/analytics/Constants;->SEND_MAX_SIZE:I

    .line 45
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/youku/analytics/Constants;->cachePersentage:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
