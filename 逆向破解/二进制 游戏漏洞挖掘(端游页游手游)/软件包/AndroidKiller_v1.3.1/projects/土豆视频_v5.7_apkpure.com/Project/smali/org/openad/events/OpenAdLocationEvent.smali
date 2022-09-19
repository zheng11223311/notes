.class public Lorg/openad/events/OpenAdLocationEvent;
.super Lorg/openad/events/XYDEvent;


# static fields
.field public static final POSITIONING_FAULT:Ljava/lang/String; = "PositioningFault"

.field public static final POSITIONING_SUCCESS:Ljava/lang/String; = "PositioningSuccess"

.field public static final POSITION_CHANGED:Ljava/lang/String; = "PositionChanged"


# instance fields
.field private mLocation:Lorg/openad/extension/OpenAdLocation;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openad/events/OpenAdLocationEvent;-><init>(Ljava/lang/String;Lorg/openad/extension/OpenAdLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/openad/extension/OpenAdLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openad/events/OpenAdLocationEvent;->mLocation:Lorg/openad/extension/OpenAdLocation;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/openad/extension/OpenAdLocation;
    .locals 1

    iget-object v0, p0, Lorg/openad/events/OpenAdLocationEvent;->mLocation:Lorg/openad/extension/OpenAdLocation;

    return-object v0
.end method
