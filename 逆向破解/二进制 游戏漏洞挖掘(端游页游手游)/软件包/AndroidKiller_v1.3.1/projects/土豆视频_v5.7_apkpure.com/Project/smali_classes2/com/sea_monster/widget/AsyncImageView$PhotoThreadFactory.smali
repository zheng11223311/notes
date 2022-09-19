.class final Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/widget/AsyncImageView;
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
    .line 80
    const-string v0, "Photo"

    invoke-direct {p0, v0}, Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;->mThreadName:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;->mThreadName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sea_monster/widget/AsyncImageView$PhotoThreadFactory;->mThreadName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
