.class public Lio/rong/imlib/model/MessageContent$MessageHandler$DefaultMessageHandler;
.super Lio/rong/imlib/model/MessageContent$MessageHandler;
.source "MessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/MessageContent$MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/model/MessageContent$MessageHandler",
        "<",
        "Lio/rong/imlib/model/MessageContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lio/rong/imlib/model/MessageContent$MessageHandler;-><init>(Landroid/content/Context;)V

    .line 129
    return-void
.end method


# virtual methods
.method public afterDecodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "messageContent"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 134
    return-void
.end method

.method public beforeEncodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)Z
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "messageContent"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method
