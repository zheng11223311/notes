.class Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/services/YoukuAsyncTask;
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

.field final mTask:Lcom/youku/gamecenter/services/YoukuAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/youku/gamecenter/services/YoukuAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/youku/gamecenter/services/YoukuAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/gamecenter/services/YoukuAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;, "Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/youku/gamecenter/services/YoukuAsyncTask;

    .line 387
    iput-object p2, p0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 388
    return-void
.end method
