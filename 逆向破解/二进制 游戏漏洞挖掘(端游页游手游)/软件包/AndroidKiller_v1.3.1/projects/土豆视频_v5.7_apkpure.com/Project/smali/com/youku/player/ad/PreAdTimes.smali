.class public Lcom/youku/player/ad/PreAdTimes;
.super Ljava/lang/Object;
.source "PreAdTimes.java"


# static fields
.field public static TIMESTOHINT:I

.field public static times:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/youku/player/ad/PreAdTimes;->times:I

    .line 5
    const/16 v0, 0x8

    sput v0, Lcom/youku/player/ad/PreAdTimes;->TIMESTOHINT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
