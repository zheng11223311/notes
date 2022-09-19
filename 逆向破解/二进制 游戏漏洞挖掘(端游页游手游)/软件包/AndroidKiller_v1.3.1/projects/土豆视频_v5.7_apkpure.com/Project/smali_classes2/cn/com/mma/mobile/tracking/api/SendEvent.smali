.class Lcn/com/mma/mobile/tracking/api/SendEvent;
.super Ljava/lang/Object;
.source "Countly.java"


# instance fields
.field public eventName:Ljava/lang/String;

.field public muds:Ljava/lang/String;

.field public segmentation:Ljava/util/Map;
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

.field public timestamp:J

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->url:Ljava/lang/String;

    .line 1137
    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->muds:Ljava/lang/String;

    .line 1138
    iput-object v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->segmentation:Ljava/util/Map;

    .line 1139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->timestamp:J

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1143
    iget-wide v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->timestamp:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/SendEvent;->url:Ljava/lang/String;

    return-object v0
.end method
