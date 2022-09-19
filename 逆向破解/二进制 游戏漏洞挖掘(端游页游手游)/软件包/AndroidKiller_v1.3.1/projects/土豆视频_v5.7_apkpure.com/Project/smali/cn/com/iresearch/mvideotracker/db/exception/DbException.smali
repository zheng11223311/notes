.class public Lcn/com/iresearch/mvideotracker/db/exception/DbException;
.super Lcn/com/iresearch/mvideotracker/db/exception/AfinalException;
.source "DbException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private strMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/com/iresearch/mvideotracker/db/exception/AfinalException;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/exception/DbException;->strMsg:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/com/iresearch/mvideotracker/db/exception/AfinalException;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/exception/DbException;->strMsg:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/exception/DbException;->strMsg:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/exception/DbException;->strMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/exception/DbException;->strMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-super {p0}, Lcn/com/iresearch/mvideotracker/db/exception/AfinalException;->printStackTrace()V

    .line 19
    return-void
.end method
