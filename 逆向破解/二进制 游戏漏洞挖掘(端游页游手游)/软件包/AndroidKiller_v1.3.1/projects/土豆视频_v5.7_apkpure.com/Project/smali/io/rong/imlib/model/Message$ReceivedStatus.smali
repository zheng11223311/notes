.class public Lio/rong/imlib/model/Message$ReceivedStatus;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedStatus"
.end annotation


# static fields
.field private static final DOWNLOADED:I = 0x4

.field private static final LISTENED:I = 0x2

.field private static final READ:I = 0x1


# instance fields
.field private flag:I

.field private isDownload:Z

.field private isListened:Z

.field private isRead:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 451
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    .line 452
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    .line 453
    iput-boolean v2, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    .line 461
    iput p1, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 462
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    .line 463
    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    .line 464
    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    .line 465
    return-void

    :cond_0
    move v0, v2

    .line 462
    goto :goto_0

    :cond_1
    move v0, v2

    .line 463
    goto :goto_1

    :cond_2
    move v1, v2

    .line 464
    goto :goto_2
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    return v0
.end method

.method public isDownload()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    return v0
.end method

.method public isListened()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    return v0
.end method

.method public setDownload()V
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isDownload:Z

    .line 521
    return-void
.end method

.method public setListened()V
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened:Z

    .line 500
    return-void
.end method

.method public setRead()V
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->flag:I

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imlib/model/Message$ReceivedStatus;->isRead:Z

    .line 505
    return-void
.end method
