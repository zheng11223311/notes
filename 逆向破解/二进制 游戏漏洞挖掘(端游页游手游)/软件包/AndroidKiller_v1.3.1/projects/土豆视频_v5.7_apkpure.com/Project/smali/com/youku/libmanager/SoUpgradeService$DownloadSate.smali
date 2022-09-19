.class public final enum Lcom/youku/libmanager/SoUpgradeService$DownloadSate;
.super Ljava/lang/Enum;
.source "SoUpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/libmanager/SoUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadSate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/libmanager/SoUpgradeService$DownloadSate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

.field public static final enum DOWNLOADED:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

.field public static final enum DOWNLOADING:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

.field public static final enum STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1175
    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADING:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v4}, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADED:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .line 1174
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    sget-object v1, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADING:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADED:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->$VALUES:[Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1174
    const-class v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    return-object v0
.end method

.method public static values()[Lcom/youku/libmanager/SoUpgradeService$DownloadSate;
    .locals 1

    .prologue
    .line 1174
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->$VALUES:[Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    invoke-virtual {v0}, [Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    return-object v0
.end method
