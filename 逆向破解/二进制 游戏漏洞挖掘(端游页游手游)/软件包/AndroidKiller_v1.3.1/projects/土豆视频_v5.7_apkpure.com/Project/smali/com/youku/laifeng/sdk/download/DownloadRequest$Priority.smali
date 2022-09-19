.class public final enum Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
.super Ljava/lang/Enum;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/download/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

.field public static final enum HIGH:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

.field public static final enum IMMEDIATE:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

.field public static final enum LOW:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

.field public static final enum NORMAL:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->LOW:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 20
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->NORMAL:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 21
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->HIGH:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 22
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->IMMEDIATE:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->LOW:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->NORMAL:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->HIGH:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->IMMEDIATE:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->$VALUES:[Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    return-object v0
.end method

.method public static values()[Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->$VALUES:[Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    invoke-virtual {v0}, [Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    return-object v0
.end method
