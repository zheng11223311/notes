.class public final enum Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
.super Ljava/lang/Enum;
.source "RealTimeLocationConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealTimeLocationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

.field public static final enum RC_REAL_TIME_LOCATION_STATUS_CONNECTED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

.field public static final enum RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

.field public static final enum RC_REAL_TIME_LOCATION_STATUS_INCOMING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

.field public static final enum RC_REAL_TIME_LOCATION_STATUS_OUTGOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;


# instance fields
.field code:I

.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    const-string v1, "RC_REAL_TIME_LOCATION_STATUS_IDLE"

    const-string v2, "Idle state"

    invoke-direct {v0, v1, v3, v3, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 20
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    const-string v1, "RC_REAL_TIME_LOCATION_STATUS_INCOMING"

    const-string v2, "Incoming state"

    invoke-direct {v0, v1, v4, v4, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_INCOMING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 27
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    const-string v1, "RC_REAL_TIME_LOCATION_STATUS_OUTGOING"

    const-string v2, "Outgoing state"

    invoke-direct {v0, v1, v5, v5, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_OUTGOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 33
    new-instance v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    const-string v1, "RC_REAL_TIME_LOCATION_STATUS_CONNECTED"

    const-string v2, "Connected state"

    invoke-direct {v0, v1, v6, v6, v2}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_CONNECTED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_INCOMING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_OUTGOING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_CONNECTED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    aput-object v1, v0, v6

    sput-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->$VALUES:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->code:I

    .line 40
    iput-object p4, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->msg:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 52
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->values()[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v0

    .local v0, "arr$":[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 53
    .local v1, "code":Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 56
    .end local v1    # "code":Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    :goto_1
    return-object v1

    .line 52
    .restart local v1    # "code":Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "code":Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    :cond_1
    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->$VALUES:[Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    invoke-virtual {v0}, [Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->code:I

    return v0
.end method
