.class public Lcom/youku/local/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "Thumbnailer"

.field public static mHeight:I

.field public static mWidth:I


# instance fields
.field private isStopping:Z

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/youku/local/Media;",
            ">;"
        }
    .end annotation
.end field

.field protected mThread:Ljava/lang/Thread;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x78

    sput v0, Lcom/youku/local/Thumbnailer;->mWidth:I

    .line 27
    const/16 v0, 0x64

    sput v0, Lcom/youku/local/Thumbnailer;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/youku/local/Thumbnailer;->mItems:Ljava/util/Queue;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/local/Thumbnailer;->isStopping:Z

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 22
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/local/Thumbnailer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/local/Thumbnailer;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/youku/local/Thumbnailer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/local/Thumbnailer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setThumbnailSize(II)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 135
    sput p0, Lcom/youku/local/Thumbnailer;->mWidth:I

    .line 136
    sput p1, Lcom/youku/local/Thumbnailer;->mHeight:I

    .line 137
    return-void
.end method


# virtual methods
.method public addJob(Lcom/youku/local/Media;)V
    .locals 2
    .param p1, "item"    # Lcom/youku/local/Media;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 68
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 69
    iget v0, p0, Lcom/youku/local/Thumbnailer;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/local/Thumbnailer;->totalCount:I

    .line 70
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 71
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    const-string v0, "Thumbnailer"

    const-string v1, "Job added!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public clearJobs()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/local/Thumbnailer;->totalCount:I

    .line 57
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    .local v7, "count":I
    const/4 v11, 0x0

    .line 83
    .local v11, "total":I
    const-string v0, "Thumbnailer"

    const-string v1, "Thumbnailer started"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/youku/local/Thumbnailer;->isStopping:Z

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    const/4 v9, 0x0

    .line 88
    .local v9, "interrupted":Z
    :goto_1
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/youku/local/Thumbnailer;->totalCount:I

    .line 91
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v8

    .line 93
    .local v8, "e":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 94
    const-string v0, "Thumbnailer"

    const-string v1, "interruption probably requested by stop()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_1
    if-eqz v9, :cond_3

    .line 99
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    .end local v9    # "interrupted":Z
    :cond_2
    const-string v0, "Thumbnailer"

    const-string v1, "Thumbnailer stopped"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 102
    .restart local v9    # "interrupted":Z
    :cond_3
    iget v11, p0, Lcom/youku/local/Thumbnailer;->totalCount:I

    .line 103
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youku/local/Media;

    .line 104
    .local v10, "item":Lcom/youku/local/Media;
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    add-int/lit8 v7, v7, 0x1

    .line 107
    sget-boolean v0, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v0, :cond_4

    .line 108
    invoke-static {}, Lcom/youku/thumbnailer/UThumbnailer;->creatThumbnailFolder()Ljava/lang/Boolean;

    .line 109
    invoke-virtual {v10}, Lcom/youku/local/Media;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/youku/local/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/thumbnailer/UThumbnailer;->getThumailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JPEG"

    sget v3, Lcom/youku/local/Thumbnailer;->mWidth:I

    sget v4, Lcom/youku/local/Thumbnailer;->mHeight:I

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/youku/thumbnailer/UThumbnailer;->genThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)I

    .line 113
    :cond_4
    const-string v0, "Thumbnailer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/youku/local/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/local/Scanner;->getInstance(Landroid/content/Context;)Lcom/youku/local/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/local/Scanner;->getScanListener()Lcom/youku/local/IScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/local/Scanner;->getInstance(Landroid/content/Context;)Lcom/youku/local/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/local/Scanner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/local/Scanner;->getInstance(Landroid/content/Context;)Lcom/youku/local/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/local/Scanner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/local/Thumbnailer$1;

    invoke-direct {v1, p0, v10}, Lcom/youku/local/Thumbnailer$1;-><init>(Lcom/youku/local/Thumbnailer;Lcom/youku/local/Media;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/local/Thumbnailer;->isStopping:Z

    .line 37
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    .line 39
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/local/Thumbnailer;->isStopping:Z

    .line 45
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/youku/local/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/youku/local/Thumbnailer;->clearJobs()V

    .line 48
    return-void
.end method
