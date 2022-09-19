.class public Lio/rong/imkit/model/Event$InputViewEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputViewEvent"
.end annotation


# instance fields
.field private isVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Z)Lio/rong/imkit/model/Event$InputViewEvent;
    .locals 1
    .param p0, "isVisibility"    # Z

    .prologue
    .line 716
    new-instance v0, Lio/rong/imkit/model/Event$InputViewEvent;

    invoke-direct {v0}, Lio/rong/imkit/model/Event$InputViewEvent;-><init>()V

    .line 717
    .local v0, "inputViewEvent":Lio/rong/imkit/model/Event$InputViewEvent;
    invoke-virtual {v0, p0}, Lio/rong/imkit/model/Event$InputViewEvent;->setIsVisibility(Z)V

    .line 718
    return-object v0
.end method


# virtual methods
.method public isVisibility()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lio/rong/imkit/model/Event$InputViewEvent;->isVisibility:Z

    return v0
.end method

.method public setIsVisibility(Z)V
    .locals 0
    .param p1, "isVisibility"    # Z

    .prologue
    .line 726
    iput-boolean p1, p0, Lio/rong/imkit/model/Event$InputViewEvent;->isVisibility:Z

    .line 727
    return-void
.end method
