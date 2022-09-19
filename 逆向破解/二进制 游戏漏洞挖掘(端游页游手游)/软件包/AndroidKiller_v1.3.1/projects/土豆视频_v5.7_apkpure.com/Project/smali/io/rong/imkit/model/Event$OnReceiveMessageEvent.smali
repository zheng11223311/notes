.class public Lio/rong/imkit/model/Event$OnReceiveMessageEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnReceiveMessageEvent"
.end annotation


# instance fields
.field left:I

.field message:Lio/rong/imlib/model/Message;


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Message;I)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "left"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 24
    iput p2, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->left:I

    .line 25
    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->left:I

    return v0
.end method

.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 40
    iput p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->left:I

    .line 41
    return-void
.end method

.method public setMessage(Lio/rong/imlib/model/Message;)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 32
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 33
    return-void
.end method
