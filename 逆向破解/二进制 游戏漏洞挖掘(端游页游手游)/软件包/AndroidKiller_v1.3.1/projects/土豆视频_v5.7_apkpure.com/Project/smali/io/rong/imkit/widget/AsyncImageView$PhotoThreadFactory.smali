.class final Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/AsyncImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhotoThreadFactory"
.end annotation


# instance fields
.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "Photo"

    invoke-direct {p0, v0}, Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;->mThreadName:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    iget-object v0, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;->mThreadName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView$PhotoThreadFactory;->mThreadName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
