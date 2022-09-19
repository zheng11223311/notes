.class Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/YoukuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YoukuAsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/youku/player/YoukuAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/youku/player/YoukuAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/youku/player/YoukuAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/player/YoukuAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;, "Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/youku/player/YoukuAsyncTask;

    .line 386
    iput-object p2, p0, Lcom/youku/player/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 387
    return-void
.end method
