.class public final enum Lcom/youku/analytics/data/PlayActionData$PlayGesture;
.super Ljava/lang/Enum;
.source "PlayActionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/data/PlayActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/analytics/data/PlayActionData$PlayGesture;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field private static final synthetic ENUM$VALUES:[Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_DOWN:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_LEFT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_RIGHT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

.field public static final enum SLIDE_UP:Lcom/youku/analytics/data/PlayActionData$PlayGesture;


# instance fields
.field private mGesture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 553
    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string v1, "CLICK"

    const-string v2, "click"

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->CLICK:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string v1, "SLIDE_LEFT"

    const-string v2, "leftTouch"

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_LEFT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string v1, "SLIDE_RIGHT"

    const-string/jumbo v2, "rightTouch"

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_RIGHT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string v1, "SLIDE_UP"

    .line 554
    const-string/jumbo v2, "topTouch"

    invoke-direct {v0, v1, v6, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_UP:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    new-instance v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    const-string v1, "SLIDE_DOWN"

    const-string v2, "downTouch"

    invoke-direct {v0, v1, v7, v2}, Lcom/youku/analytics/data/PlayActionData$PlayGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_DOWN:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    .line 552
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->CLICK:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_LEFT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_RIGHT:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_UP:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->SLIDE_DOWN:Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    aput-object v1, v0, v7

    sput-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->ENUM$VALUES:[Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "gesture"    # Ljava/lang/String;

    .prologue
    .line 558
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 559
    iput-object p3, p0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->mGesture:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$PlayGesture;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    return-object v0
.end method

.method public static values()[Lcom/youku/analytics/data/PlayActionData$PlayGesture;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->ENUM$VALUES:[Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    array-length v1, v0

    new-array v2, v1, [Lcom/youku/analytics/data/PlayActionData$PlayGesture;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/youku/analytics/data/PlayActionData$PlayGesture;->mGesture:Ljava/lang/String;

    return-object v0
.end method
