.class Lcom/sea_monster/cache/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static DEBUG:Z = false

.field static final DEFAULT_DISK_CACHE_MAX_SIZE_MB:I = 0xa

.field static LOG_TAG:Ljava/lang/String; = null

.field static final MEGABYTE:I = 0x100000

.field static final UNUSED_DRAWABLE_RECYCLE_DELAY_MS:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sea_monster/cache/Constants;->DEBUG:Z

    .line 22
    const-string v0, "BitmapCache"

    sput-object v0, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
