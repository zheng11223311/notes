.class public Lcom/youku/pushsdk/constants/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static ANALYTIC_DEBUG:Z

.field public static LOG_SWITCH:Z

.field public static MQTT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->LOG_SWITCH:Z

    .line 5
    sput-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    .line 6
    sput-boolean v0, Lcom/youku/pushsdk/constants/BuildConfig;->MQTT_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
