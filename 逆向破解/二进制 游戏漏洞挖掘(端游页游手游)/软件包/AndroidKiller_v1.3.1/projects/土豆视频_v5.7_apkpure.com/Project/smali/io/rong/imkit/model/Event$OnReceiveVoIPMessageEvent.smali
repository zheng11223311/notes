.class public Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnReceiveVoIPMessageEvent"
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
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;->message:Lio/rong/imlib/model/Message;

    .line 75
    iput p2, p0, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;->left:I

    .line 76
    return-void
.end method


# virtual methods
.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;->message:Lio/rong/imlib/model/Message;

    return-object v0
.end method
