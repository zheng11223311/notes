.class Lcom/youku/player/drm/DRMServiceManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DRMServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/drm/DRMServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/youku/player/drm/DRMServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/youku/player/drm/DRMServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/youku/player/drm/DRMServiceManager;-><init>(Lcom/youku/player/drm/DRMServiceManager$1;)V

    sput-object v0, Lcom/youku/player/drm/DRMServiceManager$SingletonHolder;->INSTANCE:Lcom/youku/player/drm/DRMServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
