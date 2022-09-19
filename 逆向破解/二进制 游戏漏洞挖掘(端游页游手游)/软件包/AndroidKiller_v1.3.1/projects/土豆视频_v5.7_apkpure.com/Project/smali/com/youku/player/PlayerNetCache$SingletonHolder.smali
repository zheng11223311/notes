.class final Lcom/youku/player/PlayerNetCache$SingletonHolder;
.super Ljava/lang/Object;
.source "PlayerNetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/PlayerNetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/youku/player/PlayerNetCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/youku/player/PlayerNetCache;

    invoke-direct {v0}, Lcom/youku/player/PlayerNetCache;-><init>()V

    sput-object v0, Lcom/youku/player/PlayerNetCache$SingletonHolder;->INSTANCE:Lcom/youku/player/PlayerNetCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
