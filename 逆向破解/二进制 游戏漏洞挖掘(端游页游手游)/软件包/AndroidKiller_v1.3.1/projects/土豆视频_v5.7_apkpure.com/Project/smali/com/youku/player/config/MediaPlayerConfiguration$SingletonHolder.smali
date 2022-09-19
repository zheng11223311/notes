.class Lcom/youku/player/config/MediaPlayerConfiguration$SingletonHolder;
.super Ljava/lang/Object;
.source "MediaPlayerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/config/MediaPlayerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/youku/player/config/MediaPlayerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/youku/player/config/MediaPlayerConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/player/config/MediaPlayerConfiguration;-><init>(Lcom/youku/player/config/MediaPlayerConfiguration$1;)V

    sput-object v0, Lcom/youku/player/config/MediaPlayerConfiguration$SingletonHolder;->INSTANCE:Lcom/youku/player/config/MediaPlayerConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
