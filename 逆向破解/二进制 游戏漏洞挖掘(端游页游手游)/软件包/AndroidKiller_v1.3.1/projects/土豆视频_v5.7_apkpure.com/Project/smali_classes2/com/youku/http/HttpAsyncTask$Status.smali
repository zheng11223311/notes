.class public final enum Lcom/youku/http/HttpAsyncTask$Status;
.super Ljava/lang/Enum;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/http/HttpAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/http/HttpAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/http/HttpAsyncTask$Status;

.field public static final enum FINISHED:Lcom/youku/http/HttpAsyncTask$Status;

.field public static final enum PENDING:Lcom/youku/http/HttpAsyncTask$Status;

.field public static final enum RUNNING:Lcom/youku/http/HttpAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/youku/http/HttpAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/youku/http/HttpAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/http/HttpAsyncTask$Status;->PENDING:Lcom/youku/http/HttpAsyncTask$Status;

    .line 65
    new-instance v0, Lcom/youku/http/HttpAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/youku/http/HttpAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/http/HttpAsyncTask$Status;->RUNNING:Lcom/youku/http/HttpAsyncTask$Status;

    .line 69
    new-instance v0, Lcom/youku/http/HttpAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/youku/http/HttpAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/http/HttpAsyncTask$Status;->FINISHED:Lcom/youku/http/HttpAsyncTask$Status;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/http/HttpAsyncTask$Status;

    sget-object v1, Lcom/youku/http/HttpAsyncTask$Status;->PENDING:Lcom/youku/http/HttpAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/http/HttpAsyncTask$Status;->RUNNING:Lcom/youku/http/HttpAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/http/HttpAsyncTask$Status;->FINISHED:Lcom/youku/http/HttpAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/http/HttpAsyncTask$Status;->$VALUES:[Lcom/youku/http/HttpAsyncTask$Status;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/http/HttpAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/youku/http/HttpAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/http/HttpAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/youku/http/HttpAsyncTask$Status;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/youku/http/HttpAsyncTask$Status;->$VALUES:[Lcom/youku/http/HttpAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/youku/http/HttpAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/http/HttpAsyncTask$Status;

    return-object v0
.end method
