.class public Lcom/youku/player/util/SessionUnitil;
.super Ljava/lang/Object;
.source "SessionUnitil.java"


# static fields
.field public static http_session:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isSessionCreated:Z

.field public static playEvent_session:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/player/util/SessionUnitil;->http_session:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatRandom()I
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static creatSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/util/SessionUnitil;->isSessionCreated:Z

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baseproject/utils/Util;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/youku/player/util/SessionUnitil;->creatRandom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baseproject/utils/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayVVBeginSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/youku/player/util/SessionUnitil;->isSessionCreated:Z

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/youku/player/util/SessionUnitil;->creatSession()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    .line 35
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/util/SessionUnitil;->isSessionCreated:Z

    .line 36
    sget-object v0, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    return-object v0
.end method
