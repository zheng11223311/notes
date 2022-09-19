.class Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;
.super Ljava/lang/Object;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/image/ImageAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageAsyncTaskResult"
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

.field final mTask:Lcom/youtu/apps/image/ImageAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/youtu/apps/image/ImageAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/youtu/apps/image/ImageAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youtu/apps/image/ImageAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;, "Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/youtu/apps/image/ImageAsyncTask;

    .line 378
    iput-object p2, p0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 379
    return-void
.end method
