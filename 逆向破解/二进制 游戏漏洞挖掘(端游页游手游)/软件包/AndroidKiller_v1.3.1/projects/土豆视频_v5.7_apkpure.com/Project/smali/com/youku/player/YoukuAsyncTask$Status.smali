.class public final enum Lcom/youku/player/YoukuAsyncTask$Status;
.super Ljava/lang/Enum;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/YoukuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/YoukuAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/YoukuAsyncTask$Status;

.field public static final enum FINISHED:Lcom/youku/player/YoukuAsyncTask$Status;

.field public static final enum PENDING:Lcom/youku/player/YoukuAsyncTask$Status;

.field public static final enum RUNNING:Lcom/youku/player/YoukuAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/youku/player/YoukuAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->PENDING:Lcom/youku/player/YoukuAsyncTask$Status;

    .line 77
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/YoukuAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->RUNNING:Lcom/youku/player/YoukuAsyncTask$Status;

    .line 81
    new-instance v0, Lcom/youku/player/YoukuAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/youku/player/YoukuAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->FINISHED:Lcom/youku/player/YoukuAsyncTask$Status;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/player/YoukuAsyncTask$Status;

    sget-object v1, Lcom/youku/player/YoukuAsyncTask$Status;->PENDING:Lcom/youku/player/YoukuAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/player/YoukuAsyncTask$Status;->RUNNING:Lcom/youku/player/YoukuAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/player/YoukuAsyncTask$Status;->FINISHED:Lcom/youku/player/YoukuAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->$VALUES:[Lcom/youku/player/YoukuAsyncTask$Status;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/YoukuAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/youku/player/YoukuAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/YoukuAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/YoukuAsyncTask$Status;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/youku/player/YoukuAsyncTask$Status;->$VALUES:[Lcom/youku/player/YoukuAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/youku/player/YoukuAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/YoukuAsyncTask$Status;

    return-object v0
.end method
