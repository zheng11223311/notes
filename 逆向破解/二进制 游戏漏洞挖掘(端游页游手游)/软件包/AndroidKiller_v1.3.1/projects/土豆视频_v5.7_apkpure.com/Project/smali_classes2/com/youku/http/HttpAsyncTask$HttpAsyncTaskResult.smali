.class Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;
.super Ljava/lang/Object;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/http/HttpAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpAsyncTaskResult"
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

.field final mTask:Lcom/youku/http/HttpAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/youku/http/HttpAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/youku/http/HttpAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/http/HttpAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;, "Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;->mTask:Lcom/youku/http/HttpAsyncTask;

    .line 350
    iput-object p2, p0, Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 351
    return-void
.end method
