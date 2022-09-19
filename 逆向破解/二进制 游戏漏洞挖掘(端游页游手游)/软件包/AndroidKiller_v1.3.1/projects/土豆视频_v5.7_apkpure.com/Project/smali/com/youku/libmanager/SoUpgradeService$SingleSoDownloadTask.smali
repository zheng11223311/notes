.class Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
.super Ljava/lang/Object;
.source "SoUpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/libmanager/SoUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleSoDownloadTask"
.end annotation


# instance fields
.field private volatile mDownloadState:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

.field private mInfo:Lcom/youku/libmanager/SoInfo;

.field final synthetic this$0:Lcom/youku/libmanager/SoUpgradeService;


# direct methods
.method public constructor <init>(Lcom/youku/libmanager/SoUpgradeService;Lcom/youku/libmanager/SoInfo;)V
    .locals 1
    .param p2, "info"    # Lcom/youku/libmanager/SoInfo;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->mDownloadState:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .line 1095
    iput-object p2, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->mInfo:Lcom/youku/libmanager/SoInfo;

    .line 1096
    return-void
.end method

.method static synthetic access$100(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->mDownloadState:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;Lcom/youku/libmanager/SoUpgradeService$DownloadSate;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
    .param p1, "x1"    # Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->mDownloadState:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->mInfo:Lcom/youku/libmanager/SoInfo;

    return-object v0
.end method


# virtual methods
.method public startDownload()V
    .locals 2

    .prologue
    .line 1102
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADING:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->mDownloadState:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .line 1103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;

    invoke-direct {v1, p0}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;-><init>(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1171
    return-void
.end method
