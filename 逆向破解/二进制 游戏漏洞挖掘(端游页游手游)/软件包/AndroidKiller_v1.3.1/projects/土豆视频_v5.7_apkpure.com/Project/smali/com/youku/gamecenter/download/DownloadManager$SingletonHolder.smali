.class Lcom/youku/gamecenter/download/DownloadManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/youku/gamecenter/download/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/download/DownloadManager;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadManager$1;)V

    sput-object v0, Lcom/youku/gamecenter/download/DownloadManager$SingletonHolder;->INSTANCE:Lcom/youku/gamecenter/download/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
