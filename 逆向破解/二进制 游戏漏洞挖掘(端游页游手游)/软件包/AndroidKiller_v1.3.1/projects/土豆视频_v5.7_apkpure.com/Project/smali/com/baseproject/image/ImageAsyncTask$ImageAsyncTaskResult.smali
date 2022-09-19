.class Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;
.super Ljava/lang/Object;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseproject/image/ImageAsyncTask;
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

.field final mTask:Lcom/baseproject/image/ImageAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/baseproject/image/ImageAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/baseproject/image/ImageAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baseproject/image/ImageAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;, "Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/baseproject/image/ImageAsyncTask;

    .line 379
    iput-object p2, p0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 380
    return-void
.end method
