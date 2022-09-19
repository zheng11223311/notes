.class public Ls/a;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Random;

.field static b:I


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Ls/a;->a:Ljava/util/Random;

    .line 12
    const/4 v0, 0x0

    sput v0, Ls/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->c:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->c:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->c:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->c:Z

    .line 41
    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 15
    sput p0, Ls/a;->b:I

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/a;->c:Z

    .line 79
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    iput v0, p1, Landroid/os/Message;->what:I

    .line 70
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 71
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 72
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 75
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Ls/a;->c:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Ls/a;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    sget-object v0, Ls/a;->a:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 60
    sget v1, Ls/a;->b:I

    if-ge v0, v1, :cond_1

    goto :goto_1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    .prologue
    .line 23
    iget-boolean v0, p0, Ls/a;->c:Z

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method
