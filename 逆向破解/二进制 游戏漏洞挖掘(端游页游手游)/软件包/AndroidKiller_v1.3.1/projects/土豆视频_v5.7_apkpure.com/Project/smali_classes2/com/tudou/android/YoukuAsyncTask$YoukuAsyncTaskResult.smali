.class Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/YoukuAsyncTask;
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

.field final mTask:Lcom/tudou/android/YoukuAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/tudou/android/YoukuAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/tudou/android/YoukuAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/android/YoukuAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;, "Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/tudou/android/YoukuAsyncTask;

    .line 385
    iput-object p2, p0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 386
    return-void
.end method
