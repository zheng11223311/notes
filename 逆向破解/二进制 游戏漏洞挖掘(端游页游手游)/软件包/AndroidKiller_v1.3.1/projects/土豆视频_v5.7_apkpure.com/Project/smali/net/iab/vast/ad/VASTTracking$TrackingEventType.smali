.class public final enum Lnet/iab/vast/ad/VASTTracking$TrackingEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/iab/vast/ad/VASTTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackingEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/iab/vast/ad/VASTTracking$TrackingEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum AcceptInvitation:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Close:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Collapse:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Complete:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum CreativeView:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Expand:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum FirstQuartile:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Fullscreen:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Midpoint:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Mute:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Pause:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Resume:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Rewind:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Start:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum ThirdQuartile:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

.field public static final enum Unmute:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "CreativeView"

    invoke-direct {v0, v1, v3}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->CreativeView:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Start"

    invoke-direct {v0, v1, v4}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Start:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Midpoint"

    invoke-direct {v0, v1, v5}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Midpoint:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "FirstQuartile"

    invoke-direct {v0, v1, v6}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->FirstQuartile:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "ThirdQuartile"

    invoke-direct {v0, v1, v7}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->ThirdQuartile:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Complete:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Mute"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Mute:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Unmute"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Unmute:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Pause"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Pause:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Rewind"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Rewind:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Resume"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Resume:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Fullscreen"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Fullscreen:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Expand"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Expand:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Collapse"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Collapse:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "AcceptInvitation"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->AcceptInvitation:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    new-instance v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const-string v1, "Close"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Close:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    const/16 v0, 0x10

    new-array v0, v0, [Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    sget-object v1, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->CreativeView:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Start:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Midpoint:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v1, v0, v5

    sget-object v1, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->FirstQuartile:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v1, v0, v6

    sget-object v1, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->ThirdQuartile:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Complete:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Mute:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Unmute:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Pause:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Rewind:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Resume:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Fullscreen:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Expand:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Collapse:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->AcceptInvitation:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->Close:Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->$VALUES:[Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lnet/iab/vast/ad/VASTTracking$TrackingEventType;
    .locals 5

    invoke-static {}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->values()[Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/iab/vast/ad/VASTTracking$TrackingEventType;
    .locals 1

    const-class v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    return-object v0
.end method

.method public static values()[Lnet/iab/vast/ad/VASTTracking$TrackingEventType;
    .locals 1

    sget-object v0, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->$VALUES:[Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    invoke-virtual {v0}, [Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    return-object v0
.end method
