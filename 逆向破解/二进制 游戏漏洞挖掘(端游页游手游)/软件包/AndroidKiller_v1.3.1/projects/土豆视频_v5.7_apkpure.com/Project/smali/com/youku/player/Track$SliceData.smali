.class Lcom/youku/player/Track$SliceData;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SliceData"
.end annotation


# instance fields
.field public loadingTimes:I

.field public playtime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/Track$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/Track$1;

    .prologue
    .line 1900
    invoke-direct {p0}, Lcom/youku/player/Track$SliceData;-><init>()V

    return-void
.end method
